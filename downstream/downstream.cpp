// Purpose of this code is to just call one function from each library.
// This is to check if the code compiles and links.

#include <zoo/bitcask/apilinktest.h>
#include <zoo/common/apilinktest.h>
#include <zoo/fs/core/apilinktest.h>
#include <zoo/fs/local/apilinktest.h>
#include <zoo/fs/sftp/apilinktest.h>
#include <zoo/spider/apilinktest.h>
#include <zoo/squid/core/apilinktest.h>
#include <zoo/squid/postgresql/apilinktest.h>
#include <zoo/squid/mysql/apilinktest.h>
#include <zoo/squid/sqlite3/apilinktest.h>

int main()
{
	zoo::bitcask::api_link_test();
	zoo::common::api_link_test();
	zoo::fs::api_link_test();
	zoo::fs::local::api_link_test();
	zoo::fs::sftp::api_link_test();
	zoo::spider::api_link_test();
	zoo::squid::api_link_test();
	zoo::squid::postgresql::api_link_test();
	zoo::squid::mysql::api_link_test();
	zoo::squid::sqlite::api_link_test();
}
