#!/usr/bin/python2.7
import urllib, json, logging
import MySQLdb, sys
try: 
	db=None
	logging.basicConfig(filename='sync.log',level=logging.DEBUG,format='%(asctime)s %(message)s')
	logging.info('Sync started')
	db=MySQLdb.connect(user="root",passwd="secret4mysql",db="jps")
	db.autocommit(False)
	c=db.cursor()
	c.execute("select updt,dndt from synctb limit 1")
	row=c.fetchone()
	updt=str(row[0])
	dndt=str(row[1])
	url="http://jps.symphonytek.com/fee/getfeedata.php?lastdtm="+dndt
	response=urllib.urlopen(url)
	data=json.loads(response.read())
	for r in data['fee']:
		sql="""insert into fee(mr_no,mr_date,studid,noterm,fee_amt,cash,chq_no,late_fee,term,rebflg,rebate,adhoc,lastupd)
				values('%s','%s',%s,%s,%s,%s,'%s',%s,%s,%s,%s,%s,'%s')
				""" % (r['MR_NO'],r['MR_DATE'],r['STUDID'],r['NOTERM'],r['FEE_AMT'],r['CASH'],r['CHQ_NO'],r['LATE_FEE'],r['TERM'],r['REBFLG'],r['REBATE'],r['adhoc'],r['lastupd'])
		c.execute(sql)
		c.execute("update studmast set noterms=noterms+%s where studid=%s" % (r['NOTERM'],r['STUDID']))
	for r in data['fee_detail']:
		sql="insert into fee_detail(mr_no,ac_no,ac_amt,ac_amtpaid,lastupd) values('%s',%s,%s,%s,'%s')"%(r['MR_NO'],r['AC_NO'],r['AC_AMT'],r['AC_AMTPAID'],r['lastupd'])
		c.execute(sql)
	for r in data['adhocfee']:
		sql="update adhocfee set studid=%s,ac_no=%s,amount=%s,dt='%s',paid=%s,mr_no='%s',lastupd='%s' where slno=%s"%(r['studid'],r['ac_no'],r['amount'],r['dt'],r['paid'],r['mr_no'],r['lastupd'],r['slno'])
		c.execute(sql)
	sql="update synctb set dndt='%s'" % data['dtm']
	c.execute(sql)
	db.commit()
	logging.info('Sync finished')
except MySQLdb.Error:
	if not db is None:
		db.rollback()
	logging.exception("DB error")
	#print("DB error ",sys.exc_info()[0])
except:
	#print("Other error ",sys.exc_info()[0])
	logging.exception("Error")
