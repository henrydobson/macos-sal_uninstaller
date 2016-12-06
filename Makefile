USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
TITLE=SalUninstaller
REVERSE_DOMAIN=com.pebbleit
PAYLOAD=\
	pack-process \
	pack-app

pack-process: l_usr_local_bin
	@sudo ${CP} "uninstall_sal" "${WORK_D}/usr/local/bin"
	@sudo chown -R root:wheel "${WORK_D}/usr/local/bin/uninstall_sal"
	@sudo chmod -R 755 "${WORK_D}/usr/local/bin/uninstall_sal"

pack-app: l_Applications_Utilities
	@sudo mkdir -p ${WORK_D}/Applications/Utilities
	@sudo ${CP} -R "Uninstall Sal+.app" ${WORK_D}/Applications/Utilities
	@sudo chown root:admin ${WORK_D}/Applications/Utilities
	@sudo chmod 755 ${WORK_D}/Applications/Utilities
