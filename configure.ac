AC_INIT(haveinet,0.3.0)
AC_MSG_NOTICE(AC_PACKAGE_NAME AC_PACKAGE_VERSION)
AC_ARG_VAR(TESTADDR,[The default hostname or IP that the test will try to reach (default: 8.8.8.8)])
AC_PREFIX_DEFAULT([/usr/local])

AC_SUBST(version,AC_PACKAGE_VERSION)
if test "$TESTADDR" != ""; then
  AC_SUBST(testaddr,$TESTADDR)
else
  AC_SUBST(testaddr,[8.8.8.8])
fi

AC_OUTPUT([README.md])
AC_OUTPUT([haveinet.sh])
AC_OUTPUT([Makefile])

