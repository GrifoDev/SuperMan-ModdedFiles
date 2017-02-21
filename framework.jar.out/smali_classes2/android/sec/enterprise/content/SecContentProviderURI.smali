.class public Landroid/sec/enterprise/content/SecContentProviderURI;
.super Ljava/lang/Object;
.source "SecContentProviderURI.java"


# static fields
.field public static final ACTION_GEARPOLICY_ENABLED_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.GEARPOLICY_ENABLE_INTERNAL"

.field public static final ADVANCEDRESTRICTIONPOLICY:Ljava/lang/String; = "AdvancedRestrictionPolicy"

.field public static final ADVANCEDRESTRICTIONPOLICY_FIRMWAREAUTOUPDATEALLOWED:Ljava/lang/String; = "isFirmwareAutoUpdateAllowed"

.field public static final ADVANCEDRESTRICTION_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/AdvancedRestrictionPolicy"

.field public static final APPLICATIONPERMISSIONCONTROLPOLICY:Ljava/lang/String; = "ApplicationPermissionControlPolicy"

.field public static final APPLICATIONPERMISSIONCONTROLPOLICY_GETPERMISSIONBLOCKEDLIST_METHOD:Ljava/lang/String; = "getPermissionBlockedList"

.field public static final APPLICATIONPERMISSIONCONTROL_URI:Ljava/lang/String; = "content://com.sec.knox.provider/ApplicationPermissionControlPolicy"

.field public static final APPLICATIONPOLICY:Ljava/lang/String; = "ApplicationPolicy"

.field public static final APPLICATIONPOLICY_APPINSTALLTOSDCARD_METHOD:Ljava/lang/String; = "getAppInstallToSdCard"

.field public static final APPLICATIONPOLICY_APPLICATIONCLEARCACHE_METHOD:Ljava/lang/String; = "isApplicationClearCacheDisabled"

.field public static final APPLICATIONPOLICY_APPLICATIONCLEARDATA_METHOD:Ljava/lang/String; = "isApplicationClearDataDisabled"

.field public static final APPLICATIONPOLICY_APPLICATIONCOMPONENTSTATE_METHOD:Ljava/lang/String; = "getApplicationComponentState"

.field public static final APPLICATIONPOLICY_APPLICATIONFORCESTOP_METHOD:Ljava/lang/String; = "isApplicationForceStopDisabled"

.field public static final APPLICATIONPOLICY_APPLICATIONICONFROMDB_METHOD:Ljava/lang/String; = "getApplicationIconFromDb"

.field public static final APPLICATIONPOLICY_APPLICATIONINSTALLATIONMODE_METHOD:Ljava/lang/String; = "getAppInstallationMode"

.field public static final APPLICATIONPOLICY_APPLICATIONINSTALLED_METHOD:Ljava/lang/String; = "isApplicationInstalled"

.field public static final APPLICATIONPOLICY_APPLICATIONNAMEFROMDB_METHOD:Ljava/lang/String; = "getApplicationNameFromDb"

.field public static final APPLICATIONPOLICY_APPLICATIONNOTIFICATIONMODE_METHOD:Ljava/lang/String; = "getApplicationNotificationMode"

.field public static final APPLICATIONPOLICY_APPLICATIONSTATEDISABLEDLIST_METHOD:Ljava/lang/String; = "getApplicationStateDisabledList"

.field public static final APPLICATIONPOLICY_APPLICATIONSTATE_METHOD:Ljava/lang/String; = "getApplicationStateEnabled"

.field public static final APPLICATIONPOLICY_APPLICATIONUNINSTALLATIONMODE_METHOD:Ljava/lang/String; = "getApplicationUninstallationMode"

.field public static final APPLICATIONPOLICY_APPLICATIONUNINSTALLATION_METHOD:Ljava/lang/String; = "getApplicationUninstallationEnabled"

.field public static final APPLICATIONPOLICY_APPLICATION_INSTALL_UNINSTALL_LIST_METHOD:Ljava/lang/String; = "getApplicationInstallUninstallList"

.field public static final APPLICATIONPOLICY_DEFAULTASSISTAPP_METHOD:Ljava/lang/String; = "isChangeAssistDefaultAppAllowed"

.field public static final APPLICATIONPOLICY_DEFAULTSMSAPP_METHOD:Ljava/lang/String; = "isChangeSmsDefaultAppAllowed"

.field public static final APPLICATIONPOLICY_DISABLED_CLIPBOARD_BLACKLIST_METHOD:Ljava/lang/String; = "getPackagesFromDisableClipboardBlackList"

.field public static final APPLICATIONPOLICY_DISABLED_CLIPBOARD_WHITELIST_METHOD:Ljava/lang/String; = "getPackagesFromDisableClipboardWhiteList"

.field public static final APPLICATIONPOLICY_GETBATTERYOPTIMIZATIONWHITELIST_METHOD:Ljava/lang/String; = "getAllPackagesFromBatteryOptimizationWhiteList"

.field public static final APPLICATIONPOLICY_GETDEFAULTAPPLICATION_METHOD:Ljava/lang/String; = "getDefaultApplicationInternal"

.field public static final APPLICATIONPOLICY_INTENTDISABLED_METHOD:Ljava/lang/String; = "isIntentDisabled"

.field public static final APPLICATIONPOLICY_ISAPPLICATIONSETTODEFAULT_METHOD:Ljava/lang/String; = "isApplicationSetToDefault"

.field public static final APPLICATIONPOLICY_PACKAGEUPDATEALLOWED_METHOD:Ljava/lang/String; = "isPackageUpdateAllowed"

.field public static final APPLICATIONPOLICY_USBPERMITTEDFORPACKAGE_METHOD:Ljava/lang/String; = "isUsbDevicePermittedForPackage"

.field public static final APPLICATION_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/ApplicationPolicy"

.field public static final AUDITLOGPOLICY_AUDITLOGASUSER_METHOD:Ljava/lang/String; = "AuditLoggerAsUser"

.field public static final AUDITLOGPOLICY_AUDITLOGENABLED_METHOD:Ljava/lang/String; = "isAuditLogEnabled"

.field public static final AUDITLOGPOLICY_AUTOCOMPLETE_EVENT:Ljava/lang/String; = "AUTO_COMPLETING_DATA"

.field public static final AUDITLOGPOLICY_OPENPOPUP_EVENT:Ljava/lang/String; = "OPEN_POPUP_URL"

.field public static final AUDITLOGPOLICY_OPENURL_EVENT:Ljava/lang/String; = "OPEN_URL"

.field public static final AUDITPOLICY:Ljava/lang/String; = "AuditLog"

.field public static final AUDIT_URI:Ljava/lang/String; = "content://com.sec.knox.provider/AuditLog"

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field public static final AUTHORITY2:Ljava/lang/String; = "com.sec.knox.provider2"

.field public static final BLUETOOTHPOLICY:Ljava/lang/String; = "BluetoothPolicy"

.field public static final BLUETOOTHPOLICY_BLUETOOTHENABLEDWITHMSG_METHOD:Ljava/lang/String; = "isBluetoothEnabledWithMsg"

.field public static final BLUETOOTHPOLICY_BLUETOOTHENABLED_METHOD:Ljava/lang/String; = "isBluetoothEnabled"

.field public static final BLUETOOTHPOLICY_BLUETOOTHLOGENABLED_METHOD:Ljava/lang/String; = "isBluetoothLogEnabled"

.field public static final BLUETOOTHPOLICY_BLUETOOTHLOG_METHOD:Ljava/lang/String; = "bluetoothLog"

.field public static final BLUETOOTHPOLICY_DESKTOPCONNECTIVITY_METHOD:Ljava/lang/String; = "isDesktopConnectivityEnabled"

.field public static final BLUETOOTHPOLICY_DISCOVERABLE_METHOD:Ljava/lang/String; = "isDiscoverableEnabled"

.field public static final BLUETOOTHPOLICY_LIMITEDDISCOVERABLED_METHOD:Ljava/lang/String; = "isLimitedDiscoverableEnabled"

.field public static final BLUETOOTHPOLICY_OUTGOINGCALLSALLOWED_METHOD:Ljava/lang/String; = "isOutgoingCallsAllowed"

.field public static final BLUETOOTHUTILSPOLICY:Ljava/lang/String; = "BluetoothUtils"

.field public static final BLUETOOTHUTILSPOLICY_URI:Ljava/lang/String; = "content://com.sec.knox.provider/BluetoothUtils"

.field public static final BLUETOOTHUTILS_BLUETOOTHLOGENABLED_METHOD:Ljava/lang/String; = "isBluetoothLogEnabled"

.field public static final BLUETOOTHUTILS_BLUETOOTHLOGFORDEVICE_METHOD:Ljava/lang/String; = "bluetoothLogForDevice"

.field public static final BLUETOOTHUTILS_BLUETOOTHLOGFORREMOTE_METHOD:Ljava/lang/String; = "bluetoothLogForRemote"

.field public static final BLUETOOTHUTILS_BLUETOOTHLOG_METHOD:Ljava/lang/String; = "bluetoothLog"

.field public static final BLUETOOTHUTILS_BLUETOOTHSOCKETLOG_METHOD:Ljava/lang/String; = "bluetoothSocketLog"

.field public static final BLUETOOTHUTILS_HEADSETALLOWEDBYSECURITY_METHOD:Ljava/lang/String; = "isHeadsetAllowedBySecurityPolicy"

.field public static final BLUETOOTHUTILS_PAIRINGALLOWEDBYSECURITY_METHOD:Ljava/lang/String; = "isPairingAllowedbySecurityPolicy"

.field public static final BLUETOOTHUTILS_PROFILEAUTHORIZEDBYSECURITY_METHOD:Ljava/lang/String; = "isProfileAuthorizedBySecurityPolicy"

.field public static final BLUETOOTHUTILS_SOCKETALLOWEDBYSECURITY_METHOD:Ljava/lang/String; = "isSocketAllowedBySecurityPolicy"

.field public static final BLUETOOTHUTILS_SVCRFCOMPORTNUMBERBLOCKEDBYSECURITY_METHOD:Ljava/lang/String; = "isSvcRfComPortNumberBlockedBySecurityPolicy"

.field public static final BLUETOOTH_URI:Ljava/lang/String; = "content://com.sec.knox.provider/BluetoothPolicy"

.field public static final BROWSERPOLICY:Ljava/lang/String; = "BrowserPolicy"

.field public static final BROWSERPOLICY_AUTOFILL_METHOD:Ljava/lang/String; = "getAutoFillSetting"

.field public static final BROWSERPOLICY_COOKIES_METHOD:Ljava/lang/String; = "getCookiesSetting"

.field public static final BROWSERPOLICY_FORCEFRAUDWARNING_METHOD:Ljava/lang/String; = "getForceFraudWarningSetting"

.field public static final BROWSERPOLICY_HTTPPROXY_METHOD:Ljava/lang/String; = "getHttpProxy"

.field public static final BROWSERPOLICY_JAVASCRIPT_METHOD:Ljava/lang/String; = "getJavaScriptSetting"

.field public static final BROWSERPOLICY_POPUPS_METHOD:Ljava/lang/String; = "getPopupsSetting"

.field public static final BROWSERPOLICY_SETTINGSTATUS_METHOD:Ljava/lang/String; = "getBrowserSettingStatus"

.field public static final BROWSER_URI:Ljava/lang/String; = "content://com.sec.knox.provider/BrowserPolicy"

.field public static final CERTIFICATEPOLICY:Ljava/lang/String; = "CertificatePolicy"

.field public static final CERTIFICATEPOLICY_CACERTIFICATEDISABLEDASUSER_METHOD:Ljava/lang/String; = "isCaCertificateDisabledAsUser"

.field public static final CERTIFICATEPOLICY_CACERTIFICATEDISABLED_METHOD:Ljava/lang/String; = "isCaCertificateDisabled"

.field public static final CERTIFICATEPOLICY_CACERTIFICATETRUSTEDASUSER_METHOD:Ljava/lang/String; = "isCaCertificateTrustedAsUser"

.field public static final CERTIFICATEPOLICY_CACERTIFICATETRUSTED_METHOD:Ljava/lang/String; = "isCaCertificateTrusted"

.field public static final CERTIFICATEPOLICY_CERTIFICATEVALIDATION_METHOD:Ljava/lang/String; = "isCertificateValidationAtInstallEnabled"

.field public static final CERTIFICATEPOLICY_CERTIFICATE_REMOVED_METHOD:Ljava/lang/String; = "certificateRemoved"

.field public static final CERTIFICATEPOLICY_IDENTITIEDFROMSIGNATURE_METHOD:Ljava/lang/String; = "getIdentitiesFromSignatures"

.field public static final CERTIFICATEPOLICY_NOTIFY_METHOD:Ljava/lang/String; = "notifyCertificateFailure"

.field public static final CERTIFICATEPOLICY_OCSPCHECK_METHOD:Ljava/lang/String; = "isOcspCheckEnabled"

.field public static final CERTIFICATEPOLICY_PRIVATEKEYAPPLICATIONPERMITTED_METHOD:Ljava/lang/String; = "isPrivateKeyApplicationPermitted"

.field public static final CERTIFICATEPOLICY_REVOCATIONCHECK_METHOD:Ljava/lang/String; = "isRevocationCheckEnabled"

.field public static final CERTIFICATEPOLICY_SIGNATUREIDENTITYINFORMATION_METHOD:Ljava/lang/String; = "isSignatureIdentityInformationEnabled"

.field public static final CERTIFICATEPOLICY_USERREMOVECERTIFICATES_METHOD:Ljava/lang/String; = "isUserRemoveCertificatesAllowed"

.field public static final CERTIFICATEPOLICY_VALIDATECERTIFICATEATINSTALL_METHOD:Ljava/lang/String; = "validateCertificateAtInstall"

.field public static final CERTIFICATEPOLICY_VALIDATECHAINATINSTALL_METHOD:Ljava/lang/String; = "validateChainAtInstall"

.field public static final CERTIFICATE_URI:Ljava/lang/String; = "content://com.sec.knox.provider/CertificatePolicy"

.field public static final CLIENTCERTIFICATEMANAGERPOLICY:Ljava/lang/String; = "ClientCertificateManager"

.field public static final CLIENTCERTIFICATEMANAGER_CCMPOLICYENALBLEDFORPACKAGE_METHOD:Ljava/lang/String; = "isCCMPolicyEnabledForPackage"

.field public static final CLIENTCERTIFICATEMANAGER_DELETECERTIFICATE_METHOD:Ljava/lang/String; = "deleteCertificate"

.field public static final CLIENTCERTIFICATEMANAGER_GETCCMVERSION_METHOD:Ljava/lang/String; = "getCCMVersion"

.field public static final CLIENTCERTIFICATEMANAGER_INSTALLCERTIFICATE_METHOD:Ljava/lang/String; = "installCertificate"

.field public static final CLIENTCERTIFICATEMANAGER_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/ClientCertificateManager"

.field public static final CONTAINERAPPLICATIONPOLICY:Ljava/lang/String; = "ContainerApplicationPolicy"

.field public static final CONTAINERAPPLICATIONPOLICY_GETPACKAGES_METHOD:Ljava/lang/String; = "getPackages"

.field public static final CONTAINERAPPLICATION_URI:Ljava/lang/String; = "content://com.sec.knox.provider/ContainerApplicationPolicy"

.field public static final CONTENT:Ljava/lang/String; = "content://"

.field public static final DATETIMEPOLICY:Ljava/lang/String; = "DateTimePolicy"

.field public static final DATETIMEPOLICY_DATETIMECHANGE_METHOD:Ljava/lang/String; = "isDateTimeChangeEnalbed"

.field public static final DATETIMEPOLICY_GETAUTOMATIONTIME_METHOD:Ljava/lang/String; = "getAutomaticTime"

.field public static final DATETIME_URI:Ljava/lang/String; = "content://com.sec.knox.provider/DateTimePolicy"

.field public static final DEVICEACCOUNTPOLICY:Ljava/lang/String; = "DeviceAccountPolicy"

.field public static final DEVICEACCOUNTPOLICY_ACCOUNTADDITION_METHOD:Ljava/lang/String; = "isAccountAdditionAllowed"

.field public static final DEVICEACCOUNTPOLICY_ACCOUNTREMOVAL_METHOD:Ljava/lang/String; = "isAccountRemovalAllowed"

.field public static final DEVICEACCOUNT_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/DeviceAccountPolicy"

.field public static final DEVICESETTIGNSPOLICY:Ljava/lang/String; = "DeviceSettingsPolicy"

.field public static final DEVICESETTIGNS_URI:Ljava/lang/String; = "content://com.sec.knox.provider/DeviceSettingsPolicy"

.field public static final DEVICESETTINGSPOLICY_NFCSTATECHANGE_METHOD:Ljava/lang/String; = "isNFCStateChangeAllowed"

.field public static final DLPPOLICY:Ljava/lang/String; = "DlpPolicy"

.field public static final DLPPOLICY_IS_ALLOWEDTO_SHARE:Ljava/lang/String; = "isAllowedToShare"

.field public static final DLPPOLICY_IS_DLP_ACTIVATED:Ljava/lang/String; = "isDLPActivated"

.field public static final DLP_URI:Ljava/lang/String; = "content://com.sec.knox.provider/DlpPolicy"

.field public static final DOMAINFILTERPOLICY:Ljava/lang/String; = "DomainFilterPolicy"

.field public static final DOMAINFILTER_GETDEFAULTCAPTIVEPORTALURL_METHOD:Ljava/lang/String; = "getDefaultCaptivePortalUrl"

.field public static final DOMAINFILTER_URI:Ljava/lang/String; = "content://com.sec.knox.provider/DomainFilterPolicy"

.field public static final DUALSIMPOLICY:Ljava/lang/String; = "DualSimPolicy"

.field public static final DUALSIMSPOLICY_CHECKPRIVILEGEDNUMBER_METHOD:Ljava/lang/String; = "checkPrivilegedNumber"

.field public static final DUALSIMSPOLICY_GETPREFERREDSIMSLOT_METHOD:Ljava/lang/String; = "getpreferredsimslot"

.field public static final DUALSIM_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/DualSimPolicy"

.field public static final EMAILACCOUNTPOLICY:Ljava/lang/String; = "EmailAccountPolicy"

.field public static final EMAILACCOUNTPOLICY_SECURITYINCOMING_METHOD:Ljava/lang/String; = "getSecurityIncomingServerPassword"

.field public static final EMAILACCOUNTPOLICY_SECURITYOUTGOING_METHOD:Ljava/lang/String; = "getSecurityOutgoingServerPassword"

.field public static final EMAILACCOUNTPOLICY_SETSECURITYINCOMING_METHOD:Ljava/lang/String; = "setSecurityInComingServerPassword"

.field public static final EMAILACCOUNTPOLICY_SETSECURITYOUTGOING_METHOD:Ljava/lang/String; = "setSecurityOutGoingServerPassword"

.field public static final EMAILACCOUNT_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EmailAccountPolicy"

.field public static final EMAILPOLICY:Ljava/lang/String; = "EmailPolicy"

.field public static final EMAILPOLICY_ACCOUNTADDITION_METHOD:Ljava/lang/String; = "isAccountAdditionAllowed"

.field public static final EMAILPOLICY_ALLOWEMAILFORWARDING_METHOD:Ljava/lang/String; = "getAllowEmailForwarding"

.field public static final EMAILPOLICY_ALLOWHTMLEMAIL_METHOD:Ljava/lang/String; = "getAllowHtmlEmail"

.field public static final EMAILPOLICY_EMAILNOTIFICATIONS_METHOD:Ljava/lang/String; = "isEmailNotificationsEnabled"

.field public static final EMAILPOLICY_EMAILSETTINGSCHANGE_METHOD:Ljava/lang/String; = "isEmailSettingsChangesAllowed"

.field public static final EMAILPOLICY_GET_EMAIL_ACCOUNT_OBJECT_METHOD:Ljava/lang/String; = "getEnterpriseEmailAccountObject"

.field public static final EMAILPOLICY_GET_EXCHANGE_ACCOUNT_OBJECT_METHOD:Ljava/lang/String; = "getEnterpriseExchangeAccountObject"

.field public static final EMAIL_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EmailPolicy"

.field public static final ENTERPRISECERTENROLLPOLICY:Ljava/lang/String; = "EnterpriseKnoxManagerPolicy"

.field public static final ENTERPRISECERTENROLL_NOTIFYUSERKEYUNLOCKED_METHOD:Ljava/lang/String; = "notifyUserKeyUnlocked"

.field public static final ENTERPRISECERTENROLL_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EnterpriseKnoxManagerPolicy"

.field public static final ENTERPRISECONTAINERPOLICY:Ljava/lang/String; = "EnterpriseContainerPolicy"

.field public static final ENTERPRISECONTAINERPOLICY_PASSWORDENABLEDCONTAINERLOCKTIMEOUT_METHOD:Ljava/lang/String; = "getPasswordEnabledContainerLockTimeout"

.field public static final ENTERPRISECONTAINERPOLICY_PASSWORDQUALITY_METHOD:Ljava/lang/String; = "getPasswordQuality"

.field public static final ENTERPRISECONTAINERPOLICY_PASSWORDVISIBILITY_METHOD:Ljava/lang/String; = "isPasswordVisibilityEnabled"

.field public static final ENTERPRISECONTAINERSERVICEPOLICY:Ljava/lang/String; = "EnterpriseContainerService"

.field public static final ENTERPRISECONTAINERSERVICE_GETCONTAINERPACKAGES_METHOD:Ljava/lang/String; = "getContainerPackages"

.field public static final ENTERPRISECONTAINERSERVICE_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EnterpriseContainerService"

.field public static final ENTERPRISECONTAINER_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EnterpriseContainerPolicy"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY:Ljava/lang/String; = "EnterpriseDeviceManager"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_ACTIVEADMINS_METHOD:Ljava/lang/String; = "getActiveAdmins"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_ACTIVEADMIN_METHOD:Ljava/lang/String; = "isActiveAdmin"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_ADMINREMOVABLE_METHOD:Ljava/lang/String; = "getAdminRemovable"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_ISADMINREMOVABLE_METHOD:Ljava/lang/String; = "isAdminRemovable"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_ISMDMADMINPRESENT_METHOD:Ljava/lang/String; = "isMdmAdminPresent"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_MDMVERSIONCHECK_METHOD:Ljava/lang/String; = "getEnterpriseSdkVer"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_MYKNOXADMIN_METHOD:Ljava/lang/String; = "getMyKnoxAdmin"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_REMOVEACTIVEADMIN_METHOD:Ljava/lang/String; = "removeActiveAdmin"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_REMOVEWARNINGS_METHOD:Ljava/lang/String; = "getRemoveWarning"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_SETACTIVEADMIN_METHOD:Ljava/lang/String; = "setActiveAdmin"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_SETADMINREMOVABLE_METHOD:Ljava/lang/String; = "setAdminRemovable"

.field public static final ENTERPRISEDEVICEMANAGERPOLICY_UPDATEADMINPERMISSIONS_METHOD:Ljava/lang/String; = "updateAdminPermissions"

.field public static final ENTERPRISEDEVICEMANAGER_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/EnterpriseDeviceManager"

.field public static final ENTERPRISEKNOXMANAGERPOLICY:Ljava/lang/String; = "EnterpriseKnoxManagerPolicy"

.field public static final ENTERPRISEKNOXMANAGER_ADVANCEDRESTRICTION_METHOD:Ljava/lang/String; = "getAdvancedRestrictionPolicy"

.field public static final ENTERPRISEKNOXMANAGER_URI:Ljava/lang/String; = "content://com.sec.knox.provider/EnterpriseKnoxManagerPolicy"

.field public static final EXCHANGEACCOUNTPOLICY:Ljava/lang/String; = "ExchangeAccountPolicy"

.field public static final EXCHANGEACCOUNTPOLICY_ACCOUNTCERTIFICATEPASSWORD_METHOD:Ljava/lang/String; = "getAccountCertificatePassword"

.field public static final EXCHANGEACCOUNTPOLICY_ACCOUNTEMAILPASSWORD_METHOD:Ljava/lang/String; = "getAccountEmailPassword"

.field public static final EXCHANGEACCOUNTPOLICY_FORCESMIMECERTIFICATEFORENCRYPTION_METHOD:Ljava/lang/String; = "getForceSMIMECertificateForEncryption"

.field public static final EXCHANGEACCOUNTPOLICY_FORCESMIMECERTIFICATEFORSIGNING_METHOD:Ljava/lang/String; = "getForceSMIMECertificateForSigning"

.field public static final EXCHANGEACCOUNTPOLICY_FORCESMIMECERTIFICATE_METHOD:Ljava/lang/String; = "getForceSMIMECertificate"

.field public static final EXCHANGEACCOUNTPOLICY_INCOMINGATTACHMENTALLOWED_METHOD:Ljava/lang/String; = "isIncomingAttachmentsAllowed"

.field public static final EXCHANGEACCOUNTPOLICY_INCOMINGATTACHMENTSIZE_METHOD:Ljava/lang/String; = "getIncomingAttachmentSize"

.field public static final EXCHANGEACCOUNTPOLICY_MAXCALENDARAGEFILTER_METHOD:Ljava/lang/String; = "getMaxCalendarAgeFilter"

.field public static final EXCHANGEACCOUNTPOLICY_MAXEMAILAGEFILTER_METHOD:Ljava/lang/String; = "getMaxEmailAgeFilter"

.field public static final EXCHANGEACCOUNTPOLICY_MAXEMAILBODYTRUNCATIONSIZE_METHOD:Ljava/lang/String; = "getMaxEmailBodyTruncationSize"

.field public static final EXCHANGEACCOUNTPOLICY_MAXEMAILHTMLBODYTRUNCATIONSIZE_METHOD:Ljava/lang/String; = "getMaxEmailHTMLBodyTruncationSize"

.field public static final EXCHANGEACCOUNTPOLICY_REQUIREDENCRYPTED_METHOD:Ljava/lang/String; = "getRequiredEncryptedMIMEMessages"

.field public static final EXCHANGEACCOUNTPOLICY_REQUIREDSIGNED_METHOD:Ljava/lang/String; = "getRequiredSignedMIMEMessages"

.field public static final EXCHANGEACCOUNTPOLICY_SETACCOUNTEMAILPASSWORD_METHOD:Ljava/lang/String; = "setAccountEmailPassword"

.field public static final EXCHANGEACCOUNT_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/ExchangeAccountPolicy"

.field public static final FIREWALLPOLICY:Ljava/lang/String; = "FirewallPolicy"

.field public static final FIREWALLPOLICY_GLOBALPROXYALLOWED_METHOD:Ljava/lang/String; = "isGlobalProxyAllowed"

.field public static final FIREWALLPOLICY_SAVEURLBLOCKEDREPORT_METHOD:Ljava/lang/String; = "saveURLBlockedReport"

.field public static final FIREWALLPOLICY_URLBLOCKED_METHOD:Ljava/lang/String; = "isUrlBlocked"

.field public static final FIREWALLPOLICY_URLFILTERENABLED_METHOD:Ljava/lang/String; = "getURLFilterEnabled"

.field public static final FIREWALLPOLICY_URLFILTERLIST_METHOD:Ljava/lang/String; = "getURLFilterList"

.field public static final FIREWALLPOLICY_URLFILTERREPORTENABLED_METHOD:Ljava/lang/String; = "getURLFilterReportEnabled"

.field public static final FIREWALL_URI:Ljava/lang/String; = "content://com.sec.knox.provider/FirewallPolicy"

.field public static final KIOSKMODEPOLICY:Ljava/lang/String; = "KioskMode"

.field public static final KIOSKMODE_AIRCOMMANDMODE_METHOD:Ljava/lang/String; = "isAirCommandModeAllowed"

.field public static final KIOSKMODE_AIRVIEWMODE_METHOD:Ljava/lang/String; = "isAirViewModeAllowed"

.field public static final KIOSKMODE_APPSEDGEALLOWED_METHOD:Ljava/lang/String; = "isAppsEdgeAllowed"

.field public static final KIOSKMODE_BLOCKEDHWKEYCACHE_METHOD:Ljava/lang/String; = "getBlockedHwKeysCache"

.field public static final KIOSKMODE_EDGEALLOWED_METHOD:Ljava/lang/String; = "isEdgeAllowed"

.field public static final KIOSKMODE_EDGELIGHTINGALLOWED_METHOD:Ljava/lang/String; = "isEdgeLightingAllowed"

.field public static final KIOSKMODE_INFORMATIONSTREAMALLOWED_METHOD:Ljava/lang/String; = "isInformationStreamAllowed"

.field public static final KIOSKMODE_KIOSKHOMEPACKAGE_METHOD:Ljava/lang/String; = "getKioskHomePackage"

.field public static final KIOSKMODE_KIOSKMODEENABLED_METHOD:Ljava/lang/String; = "isKioskModeEnabled"

.field public static final KIOSKMODE_MULTIWINDOWMODEASUSER_METHOD:Ljava/lang/String; = "isMultiWindowModeAllowedAsUser"

.field public static final KIOSKMODE_MULTIWINDOWMODE_METHOD:Ljava/lang/String; = "isMultiWindowModeAllowed"

.field public static final KIOSKMODE_NAVIGATIONBARHIDDEN_METHOD:Ljava/lang/String; = "isNavigationBarHidden"

.field public static final KIOSKMODE_NIGHTCLOCKALLOWED_METHOD:Ljava/lang/String; = "isNightClockAllowed"

.field public static final KIOSKMODE_PEOPLEEDGEALLOWED_METHOD:Ljava/lang/String; = "isPeopleEdgeAllowed"

.field public static final KIOSKMODE_TASKMANAGERALLOWED_METHOD:Ljava/lang/String; = "isTaskManagerAllowed"

.field public static final KIOSKMODE_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KioskMode"

.field public static final KNOXCONFIGURATIONTYPEPOLICY:Ljava/lang/String; = "KnoxConfigurationType"

.field public static final KNOXCONFIGURATIONTYPE_REQUIREDPWDPATTERNRESTRICTIONS_METHOD:Ljava/lang/String; = "getRequiredPwdPatternRestrictions"

.field public static final KNOXCONFIGURATIONTYPE_URI:Ljava/lang/String; = "content://com.sec.knox.provider/KnoxConfigurationType"

.field public static final KNOXCUSTOMMANAGERSERVICE1_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService1"

.field public static final KNOXCUSTOMMANAGERSERVICE2_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/KnoxCustomManagerService2"

.field public static final KNOXCUSTOMMANAGERSERVICEPOLICY1:Ljava/lang/String; = "KnoxCustomManagerService1"

.field public static final KNOXCUSTOMMANAGERSERVICEPOLICY2:Ljava/lang/String; = "KnoxCustomManagerService2"

.field public static final KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADNAMESPACES_METHOD:Ljava/lang/String; = "getAppBlockDownloadNamespaces"

.field public static final KNOXCUSTOMMANAGERSERVICE_APPBLOCKDOWNLOADSTATE_METHOD:Ljava/lang/String; = "getAppBlockDownloadState"

.field public static final KNOXCUSTOMMANAGERSERVICE_AUTOCALLNUMBERANSWERMODE_METHOD:Ljava/lang/String; = "getAutoCallNumberAnswerMode"

.field public static final KNOXCUSTOMMANAGERSERVICE_AUTOCALLNUMBERDELAY_METHOD:Ljava/lang/String; = "getAutoCallNumberDelay"

.field public static final KNOXCUSTOMMANAGERSERVICE_AUTOCALLNUMBERLIST_METHOD:Ljava/lang/String; = "getAutoCallNumberList"

.field public static final KNOXCUSTOMMANAGERSERVICE_AUTOCALLPICKUPSTATE_METHOD:Ljava/lang/String; = "getAutoCallPickupState"

.field public static final KNOXCUSTOMMANAGERSERVICE_CALLSCREENDISABLEDITEMS_METHOD:Ljava/lang/String; = "getCallScreenDisabledItems"

.field public static final KNOXCUSTOMMANAGERSERVICE_CHARGINGLEDSTATE_METHOD:Ljava/lang/String; = "getChargingLEDState"

.field public static final KNOXCUSTOMMANAGERSERVICE_CHECKCOVERPOPUPSTATE_METHOD:Ljava/lang/String; = "getCheckCoverPopupState"

.field public static final KNOXCUSTOMMANAGERSERVICE_ETHERNETCONFIGURATIONTYPE_METHOD:Ljava/lang/String; = "getEthernetConfigurationType"

.field public static final KNOXCUSTOMMANAGERSERVICE_ETHERNETSTATE_METHOD:Ljava/lang/String; = "getEthernetState"

.field public static final KNOXCUSTOMMANAGERSERVICE_EXITUI_METHOD:Ljava/lang/String; = "getSealedExitUI"

.field public static final KNOXCUSTOMMANAGERSERVICE_EXTENTEDCALLINFOSTATE_METHOD:Ljava/lang/String; = "getExtendedCallInfoState"

.field public static final KNOXCUSTOMMANAGERSERVICE_GEARNOTIFICATIONSTATE_METHOD:Ljava/lang/String; = "getGearNotificationState"

.field public static final KNOXCUSTOMMANAGERSERVICE_HARDKEYINTENTSTATE_METHOD:Ljava/lang/String; = "getSealedHardKeyIntentState"

.field public static final KNOXCUSTOMMANAGERSERVICE_HIDENOTIFICATIONMESSAGES_METHOD:Ljava/lang/String; = "getSealedHideNotificationMessages"

.field public static final KNOXCUSTOMMANAGERSERVICE_HOMEACTIVITY_METHOD:Ljava/lang/String; = "getSealedHomeActivity"

.field public static final KNOXCUSTOMMANAGERSERVICE_INFRAREDSTATE_METHOD:Ljava/lang/String; = "getInfraredState"

.field public static final KNOXCUSTOMMANAGERSERVICE_LOCKSCREENHIDDENITEMS_METHOD:Ljava/lang/String; = "getLockScreenHiddenItems"

.field public static final KNOXCUSTOMMANAGERSERVICE_LTESETTINGSTATE_METHOD:Ljava/lang/String; = "getLTESettingState"

.field public static final KNOXCUSTOMMANAGERSERVICE_MULTIWINDOWFIXEDSTATE_METHOD:Ljava/lang/String; = "getSealedMultiWindowFixedState"

.field public static final KNOXCUSTOMMANAGERSERVICE_NOTIFICATIONMESSAGESTATE_METHOD:Ljava/lang/String; = "getSealedNotificationMessagesState"

.field public static final KNOXCUSTOMMANAGERSERVICE_POWERDIALOGCUSTOMITEMSSTATE_METHOD:Ljava/lang/String; = "getSealedPowerDialogCustomItemsState"

.field public static final KNOXCUSTOMMANAGERSERVICE_POWERDIALOGCUSTOMITEMS_METHOD:Ljava/lang/String; = "getSealedPowerDialogCustomItems"

.field public static final KNOXCUSTOMMANAGERSERVICE_POWERDIALOGITEMS_METHOD:Ljava/lang/String; = "getSealedPowerDialogItems"

.field public static final KNOXCUSTOMMANAGERSERVICE_POWERDIALOGOPTIONMODE_METHOD:Ljava/lang/String; = "getSealedPowerDialogOptionMode"

.field public static final KNOXCUSTOMMANAGERSERVICE_POWERMENULOCKEDSTATE_METHOD:Ljava/lang/String; = "getPowerMenuLockedState"

.field public static final KNOXCUSTOMMANAGERSERVICE_POWERSAVINGMODE_METHOD:Ljava/lang/String; = "getPowerSavingMode"

.field public static final KNOXCUSTOMMANAGERSERVICE_RECENTLONGPRESSACTIVITY_METHOD:Ljava/lang/String; = "getRecentLongPressActivity"

.field public static final KNOXCUSTOMMANAGERSERVICE_RECENTLONGPRESSMODE_METHOD:Ljava/lang/String; = "getRecentLongPressMode"

.field public static final KNOXCUSTOMMANAGERSERVICE_SCREENOFFONHOMELONGPRESSSTATE_METHOD:Ljava/lang/String; = "getScreenOffOnHomeLongPressState"

.field public static final KNOXCUSTOMMANAGERSERVICE_SCREENOFFONSTATUSBARDOUBLETAPSTATE_METHOD:Ljava/lang/String; = "getScreenOffOnStatusBarDoubleTapState"

.field public static final KNOXCUSTOMMANAGERSERVICE_SCREENWAKEUPONPOWERSTATE_METHOD:Ljava/lang/String; = "getScreenWakeupOnPowerState"

.field public static final KNOXCUSTOMMANAGERSERVICE_SEALEDMODESTRING_METHOD:Ljava/lang/String; = "getSealedModeString"

.field public static final KNOXCUSTOMMANAGERSERVICE_SENSORDISABLED_METHOD:Ljava/lang/String; = "getSensorDisabled"

.field public static final KNOXCUSTOMMANAGERSERVICE_SETSEALEDSTATE_METHOD:Ljava/lang/String; = "setSealedState"

.field public static final KNOXCUSTOMMANAGERSERVICE_SETTINGENABLEDITEM_METHOD:Ljava/lang/String; = "getSettingsEnabledItems"

.field public static final KNOXCUSTOMMANAGERSERVICE_SETTINGSHIDDENSTATE_METHOD:Ljava/lang/String; = "getSettingsHiddenState"

.field public static final KNOXCUSTOMMANAGERSERVICE_STATE_METHOD:Ljava/lang/String; = "getSealedState"

.field public static final KNOXCUSTOMMANAGERSERVICE_STATUSBARCLOCKSTATE_METHOD:Ljava/lang/String; = "getSealedStatusBarClockState"

.field public static final KNOXCUSTOMMANAGERSERVICE_STATUSBARICONSTATE_METHOD:Ljava/lang/String; = "getSealedStatusBarIconsState"

.field public static final KNOXCUSTOMMANAGERSERVICE_STATUSBARMODE_METHOD:Ljava/lang/String; = "getSealedStatusBarMode"

.field public static final KNOXCUSTOMMANAGERSERVICE_STATUSBARTEXTSIZE_METHOD:Ljava/lang/String; = "getStatusBarTextSize"

.field public static final KNOXCUSTOMMANAGERSERVICE_STATUSBARTEXTSTYLE_METHOD:Ljava/lang/String; = "getStatusBarTextStyle"

.field public static final KNOXCUSTOMMANAGERSERVICE_STATUSBARTEXT_METHOD:Ljava/lang/String; = "getStatusBarText"

.field public static final KNOXCUSTOMMANAGERSERVICE_TOASTENABLEDSTATE_METHOD:Ljava/lang/String; = "getToastEnabledState"

.field public static final KNOXCUSTOMMANAGERSERVICE_TOASTGRAVITYENABLEDSTATE_METHOD:Ljava/lang/String; = "getToastGravityEnabledState"

.field public static final KNOXCUSTOMMANAGERSERVICE_TOASTGRAVITYXOFFSET_METHOD:Ljava/lang/String; = "getToastGravityXOffset"

.field public static final KNOXCUSTOMMANAGERSERVICE_TOASTGRAVITYYOFFSET_METHOD:Ljava/lang/String; = "getToastGravityYOffset"

.field public static final KNOXCUSTOMMANAGERSERVICE_TOASTGRAVITY_METHOD:Ljava/lang/String; = "getToastGravity"

.field public static final KNOXCUSTOMMANAGERSERVICE_TOASTSHOWPACKAGENAMESTATE_METHOD:Ljava/lang/String; = "getToastShowPackageNameState"

.field public static final KNOXCUSTOMMANAGERSERVICE_TORCHONVOLUMEBUTTONSSTATE_METHOD:Ljava/lang/String; = "getTorchOnVolumeButtonsState"

.field public static final KNOXCUSTOMMANAGERSERVICE_USBCONNECTIONTYPE_METHOD:Ljava/lang/String; = "getUsbConnectionType"

.field public static final KNOXCUSTOMMANAGERSERVICE_USBMASSSTORAGESTATE_METHOD:Ljava/lang/String; = "getSealedUsbMassStorageState"

.field public static final KNOXCUSTOMMANAGERSERVICE_USBNETADDRESS_METHOD:Ljava/lang/String; = "getSealedUsbNetAddress"

.field public static final KNOXCUSTOMMANAGERSERVICE_USBNETSTATE_METHOD:Ljava/lang/String; = "getSealedUsbNetState"

.field public static final KNOXCUSTOMMANAGERSERVICE_VOLUMEBUTTONROTATIONSTATE_METHOD:Ljava/lang/String; = "getVolumeButtonRotationState"

.field public static final KNOXCUSTOMMANAGERSERVICE_VOLUMECONTROLSTREAM_METHOD:Ljava/lang/String; = "getVolumeControlStream"

.field public static final KNOXCUSTOMMANAGERSERVICE_VOLUMEKEYAPPSLIST_METHOD:Ljava/lang/String; = "getSealedVolumeKeyAppsList"

.field public static final KNOXCUSTOMMANAGERSERVICE_VOLUMEKEYAPPSTATE_METHOD:Ljava/lang/String; = "getSealedVolumeKeyAppState"

.field public static final KNOXCUSTOMMANAGERSERVICE_VOLUMEPANELENABLEDSTATE_METHOD:Ljava/lang/String; = "getVolumePanelEnabledState"

.field public static final KNOXCUSTOMMANAGERSERVICE_WIFIAUTOSWITCHDELAY_METHOD:Ljava/lang/String; = "getWifiAutoSwitchDelay"

.field public static final KNOXCUSTOMMANAGERSERVICE_WIFIAUTOSWITCHSTATE_METHOD:Ljava/lang/String; = "getWifiAutoSwitchState"

.field public static final KNOXCUSTOMMANAGERSERVICE_WIFIAUTOSWITCHTHRESHOLD_METHOD:Ljava/lang/String; = "getWifiAutoSwitchThreshold"

.field public static final KNOXCUSTOMMANAGERSERVICE_WIFICONNECTEDMESSAGESTATE_METHOD:Ljava/lang/String; = "getWifiConnectedMessageState"

.field public static final LOCATIONPOLICY:Ljava/lang/String; = "LocationPolicy"

.field public static final LOCATIONPOLICY_GPSSTATECHANGE_METHOD:Ljava/lang/String; = "isGPSStateChangeAllowed"

.field public static final LOCATIONPOLICY_LOCATIONPROVIDERBLOCKEDASUSER_METHOD:Ljava/lang/String; = "isLocationProviderBlockedAsUser"

.field public static final LOCATIONPOLICY_LOCATIONPROVIDERBLOCKED_METHOD:Ljava/lang/String; = "isLocationProviderBlocked"

.field public static final LOCATION_URI:Ljava/lang/String; = "content://com.sec.knox.provider/LocationPolicy"

.field public static final MISCPOLICY:Ljava/lang/String; = "MiscPolicy"

.field public static final MISCPOLICY_CURRENTLOCKSCREENSTRING_METHOD:Ljava/lang/String; = "getCurrentLockScreenString"

.field public static final MISCPOLICY_NFCSTATECHANGE_METHOD:Ljava/lang/String; = "isNFCStateChangeAllowed"

.field public static final MISC_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/MiscPolicy"

.field public static final MULTIUSERMANAGERPOLICY:Ljava/lang/String; = "MultiUserManager"

.field public static final MULTIUSERMANAGERPOLICY_MULTIPLEUSERSUPPORTED_METHOD:Ljava/lang/String; = "multipleUsersSupported"

.field public static final MULTIUSERMANAGERPOLICY_MULTIPLEUSER_METHOD:Ljava/lang/String; = "multipleUsersAllowed"

.field public static final MULTIUSERMANAGERPOLICY_USERCREATION_METHOD:Ljava/lang/String; = "isUserCreationAllowed"

.field public static final MULTIUSERMANAGERPOLICY_USERREMOVAL_METHOD:Ljava/lang/String; = "isUserRemovalAllowed"

.field public static final MULTIUSERMANAGER_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/MultiUserManager"

.field public static final PASSWORD1_URI:Ljava/lang/String; = "content://com.sec.knox.provider/PasswordPolicy1"

.field public static final PASSWORD2_URI:Ljava/lang/String; = "content://com.sec.knox.provider/PasswordPolicy2"

.field public static final PASSWORDPOLICY1:Ljava/lang/String; = "PasswordPolicy1"

.field public static final PASSWORDPOLICY2:Ljava/lang/String; = "PasswordPolicy2"

.field public static final PASSWORDPOLICY_BIOMETRICAUTHENTICATION_METHOD:Ljava/lang/String; = "isBiometricAuthenticationEnabled"

.field public static final PASSWORDPOLICY_CHANGEREQUESTED_METHOD:Ljava/lang/String; = "isChangeRequested"

.field public static final PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD:Ljava/lang/String; = "isExternalStorageForFailedPasswordsWipeExcluded"

.field public static final PASSWORDPOLICY_FORBIDDENCHARACTERSEQUENCE_METHOD:Ljava/lang/String; = "hasForbiddenCharacterSequence"

.field public static final PASSWORDPOLICY_FORBIDDENDATA_METHOD:Ljava/lang/String; = "hasForbiddenData"

.field public static final PASSWORDPOLICY_FORBIDDENNUMERICSEQUENCE_METHOD:Ljava/lang/String; = "hasForbiddenNumericSequence"

.field public static final PASSWORDPOLICY_FORBIDDENSTRINGDISTANCE_METHOD:Ljava/lang/String; = "hasForbiddenStringDistance"

.field public static final PASSWORDPOLICY_FORBIDDENSTRINGS_METHOD:Ljava/lang/String; = "getForbiddenStrings"

.field public static final PASSWORDPOLICY_GETCURRENTFAILEDPASSWORDATEEMPTS_METHOD:Ljava/lang/String; = "getCurrentFailedPasswordAttempts"

.field public static final PASSWORDPOLICY_MAXIMUMCHARACTERCHANGELENGTH_METHOD:Ljava/lang/String; = "getMinimumCharacterChangeLength"

.field public static final PASSWORDPOLICY_MAXIMUMCHARACTEROCCURENCES_METHOD:Ljava/lang/String; = "getMaximumCharacterOccurences"

.field public static final PASSWORDPOLICY_MAXIMUMCHARACTERSEQUENCELENGTH_METHOD:Ljava/lang/String; = "getMaximumCharacterSequenceLength"

.field public static final PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD:Ljava/lang/String; = "getMaximumFailedPasswordsForDisable"

.field public static final PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD:Ljava/lang/String; = "getMaximumFailedPasswordsForWipe"

.field public static final PASSWORDPOLICY_MAXIMUMNUMBERICSEQUENCELENGTH_METHOD:Ljava/lang/String; = "getMaximumNumericSequenceLength"

.field public static final PASSWORDPOLICY_MAXREPEATEDCHARACTERS_METHOD:Ljava/lang/String; = "hasMaxRepeatedCharacters"

.field public static final PASSWORDPOLICY_PASSWORDCHANGETIMEOUT_METHOD:Ljava/lang/String; = "getPasswordChangeTimeout"

.field public static final PASSWORDPOLICY_PASSWORDLOCKDELAY_METHOD:Ljava/lang/String; = "getPasswordLockDelay"

.field public static final PASSWORDPOLICY_PASSWORDPATTERNMATCHED_METHOD:Ljava/lang/String; = "isPasswordPatternMatched"

.field public static final PASSWORDPOLICY_PASSWORDVISIBILITYEDASUSER_METHOD:Ljava/lang/String; = "isPasswordVisibilityEnabledAsUser"

.field public static final PASSWORDPOLICY_PASSWORDVISIBILITYED_METHOD:Ljava/lang/String; = "isPasswordVisibilityEnabled"

.field public static final PASSWORDPOLICY_REQUIREDPWDPATTERNRESTRICTIONS_METHOD:Ljava/lang/String; = "getRequiredPwdPatternRestrictions"

.field public static final PASSWORDPOLICY_SCREENLOCKPATTERNVISIBILITY_METHOD:Ljava/lang/String; = "isScreenLockPatternVisibilityEnabled"

.field public static final PASSWORDPOLICY_SERVICERUNNING_METHOD:Ljava/lang/String; = "isServiceRunning"

.field public static final PASSWORDPOLICY_SETPWDCHANGEREQUESTED_METHOD:Ljava/lang/String; = "setPwdChangeRequested"

.field public static final PHONERESTRICTIONPOLICY:Ljava/lang/String; = "PhoneRestrictionPolicy"

.field public static final PHONERESTRICTIONPOLICY_BLOCKMMSWITHSTORAGE_METHOD:Ljava/lang/String; = "isBlockMmsWithStorageEnabled"

.field public static final PHONERESTRICTIONPOLICY_BLOCKSMSWITHSTORAGE_METHOD:Ljava/lang/String; = "isBlockSmsWithStorageEnabled"

.field public static final PHONERESTRICTIONPOLICY_CALLERIDDISPLAY_METHOD:Ljava/lang/String; = "isCallerIDDisplayAllowed"

.field public static final PHONERESTRICTIONPOLICY_CANINCOMINGCALL_METHOD:Ljava/lang/String; = "canIncomingCall"

.field public static final PHONERESTRICTIONPOLICY_CANINCOMINGSMS_METHOD:Ljava/lang/String; = "canIncomingSms"

.field public static final PHONERESTRICTIONPOLICY_CANOUTGINGSMS_METHOD:Ljava/lang/String; = "canOutgoingSms"

.field public static final PHONERESTRICTIONPOLICY_CANOUTGOINGCALL_METHOD:Ljava/lang/String; = "canOutgoingCall"

.field public static final PHONERESTRICTIONPOLICY_CHECKENABLEUSEOFPACKETDATA_METHOD:Ljava/lang/String; = "checkEnableUseOfPacketData"

.field public static final PHONERESTRICTIONPOLICY_COPYCONTACTTOSIM_METHOD:Ljava/lang/String; = "isCopyContactToSimAllowed"

.field public static final PHONERESTRICTIONPOLICY_EMERGENCYCALLONLY_METHOD:Ljava/lang/String; = "getEmergencyCallOnly"

.field public static final PHONERESTRICTIONPOLICY_GETDISCLAIMERTEXT_METHOD:Ljava/lang/String; = "getDisclaimerText"

.field public static final PHONERESTRICTIONPOLICY_INCOMINGMMS_METHOD:Ljava/lang/String; = "isIncomingMmsAllowed"

.field public static final PHONERESTRICTIONPOLICY_INCOMINGSMS_METHOD:Ljava/lang/String; = "isIncomingSmsAllowed"

.field public static final PHONERESTRICTIONPOLICY_LIMITNUMBEROFSMS_METHOD:Ljava/lang/String; = "isLimitNumberOfSmsEnabled"

.field public static final PHONERESTRICTIONPOLICY_OUTGOINGMMS_METHOD:Ljava/lang/String; = "isOutgoingMmsAllowed"

.field public static final PHONERESTRICTIONPOLICY_OUTGOINGSMS_METHOD:Ljava/lang/String; = "isOutgoingSmsAllowed"

.field public static final PHONERESTRICTIONPOLICY_SIMLOCKEDBYADMIN_METHOD:Ljava/lang/String; = "isSimLockedByAdmin"

.field public static final PHONERESTRICTIONPOLICY_WAPPUSHALLOWED_METHOD:Ljava/lang/String; = "isWapPushAllowed"

.field public static final PHONERESTRICTION_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/PhoneRestrictionPolicy"

.field public static final RESTRICTION1_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy1"

.field public static final RESTRICTION2_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy2"

.field public static final RESTRICTION3_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy3"

.field public static final RESTRICTION4_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RestrictionPolicy4"

.field public static final RESTRICTIONPOLICY1:Ljava/lang/String; = "RestrictionPolicy1"

.field public static final RESTRICTIONPOLICY2:Ljava/lang/String; = "RestrictionPolicy2"

.field public static final RESTRICTIONPOLICY3:Ljava/lang/String; = "RestrictionPolicy3"

.field public static final RESTRICTIONPOLICY4:Ljava/lang/String; = "RestrictionPolicy4"

.field public static final RESTRICTIONPOLICY_ACTIVATIONLOCKALLOWED_METHOD:Ljava/lang/String; = "isActivationLockAllowed"

.field public static final RESTRICTIONPOLICY_AIRPLANEMODEALLOWED_METHOD:Ljava/lang/String; = "isAirplaneModeAllowed"

.field public static final RESTRICTIONPOLICY_ANDROIDBEAMALLOWED_METHOD:Ljava/lang/String; = "isAndroidBeamAllowed"

.field public static final RESTRICTIONPOLICY_AUDIORECORDALLOWED_METHOD:Ljava/lang/String; = "isAudioRecordAllowed"

.field public static final RESTRICTIONPOLICY_BACKGROUNDDATAENABLED_METHOD:Ljava/lang/String; = "isBackgroundDataEnabled"

.field public static final RESTRICTIONPOLICY_BACKGROUNDPROCESSLIMIT_METHOD:Ljava/lang/String; = "isBackgroundProcessLimitEnabled"

.field public static final RESTRICTIONPOLICY_BACKUPALLOWED_METHOD:Ljava/lang/String; = "isBackupAllowed"

.field public static final RESTRICTIONPOLICY_BLUETOOTHTETHERINGENABLED_METHOD:Ljava/lang/String; = "isBluetoothTetheringEnabled"

.field public static final RESTRICTIONPOLICY_CAMERAENABLED_METHOD:Ljava/lang/String; = "isCameraEnabled"

.field public static final RESTRICTIONPOLICY_CELLULARDATAALLOWED_METHOD:Ljava/lang/String; = "isCellularDataAllowed"

.field public static final RESTRICTIONPOLICY_CHECKPACKAGESOURCE_METHOD:Ljava/lang/String; = "checkPackageSource"

.field public static final RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD:Ljava/lang/String; = "isClipboardAllowedAsUser"

.field public static final RESTRICTIONPOLICY_CLIPBOARDALLOWED_METHOD:Ljava/lang/String; = "isClipboardAllowed"

.field public static final RESTRICTIONPOLICY_CLIPBOARDSHAREALLOWEDASUSER_METHOD:Ljava/lang/String; = "isClipboardShareAllowedAsUser"

.field public static final RESTRICTIONPOLICY_CLIPBOARDSHAREALLOWED_METHOD:Ljava/lang/String; = "isClipboardShareAllowed"

.field public static final RESTRICTIONPOLICY_DATASAVINGALLOWED_METHOD:Ljava/lang/String; = "isDataSavingAllowed"

.field public static final RESTRICTIONPOLICY_DEVELOPERMODEALLOWED_METHOD:Ljava/lang/String; = "isDeveloperModeAllowed"

.field public static final RESTRICTIONPOLICY_FACTORYRESETALLOWED_METHOD:Ljava/lang/String; = "isFactoryResetAllowed"

.field public static final RESTRICTIONPOLICY_FASTENCRYPTIONALLOWED_METHOD:Ljava/lang/String; = "isFastEncryptionAllowed"

.field public static final RESTRICTIONPOLICY_FIRMWAREAUTOUPDATEALLOWED_METHOD:Ljava/lang/String; = "isFirmwareAutoUpdateAllowed"

.field public static final RESTRICTIONPOLICY_FIRMWARERECOVERYALLOWED_METHOD:Ljava/lang/String; = "isFirmwareRecoveryAllowed"

.field public static final RESTRICTIONPOLICY_FOTAUPDATEALLOWED_METHOD:Ljava/lang/String; = "isFotaVersionAllowed"

.field public static final RESTRICTIONPOLICY_GEARPOLICYENABLED_INTENT:Ljava/lang/String; = "com.samsung.edm.intent.action.GEARPOLICY_ENABLE_INTERNAL"

.field public static final RESTRICTIONPOLICY_GEARPOLICYENABLED_METHOD:Ljava/lang/String; = "isGearPolicyEnabled"

.field public static final RESTRICTIONPOLICY_GET_SELECTIVE_FOTA_METHOD:Ljava/lang/String; = "getAllowedFOTAInfo"

.field public static final RESTRICTIONPOLICY_GOOGLEACCOUNTSAUTOSYNCALLOWED_METHOD:Ljava/lang/String; = "isGoogleAccountsAutoSyncAllowed"

.field public static final RESTRICTIONPOLICY_GOOGLECRASHREPORTED_METHOD:Ljava/lang/String; = "isGoogleCrashReportedAllowed"

.field public static final RESTRICTIONPOLICY_HEADPHONE_METHOD:Ljava/lang/String; = "isHeadPhoneEnabled"

.field public static final RESTRICTIONPOLICY_HOMEKEY_METHOD:Ljava/lang/String; = "isHomeKeyEnabled"

.field public static final RESTRICTIONPOLICY_IRISCAMERAENABLEDASUSER_METHOD:Ljava/lang/String; = "isIrisCameraEnabledAsUser"

.field public static final RESTRICTIONPOLICY_KILLINGACTIVITIESONLEAVE_METHOD:Ljava/lang/String; = "isKillingActivitiesOnLeaveAllowed"

.field public static final RESTRICTIONPOLICY_LOCKSCREENENABLED_METHOD:Ljava/lang/String; = "isLockScreenEnabled"

.field public static final RESTRICTIONPOLICY_LOCKSCREENVIEW_METHOD:Ljava/lang/String; = "isLockScreenViewAllowed"

.field public static final RESTRICTIONPOLICY_MICROPHONEASUSER_METHOD:Ljava/lang/String; = "isMicrophoneEnabledAsUser"

.field public static final RESTRICTIONPOLICY_MICROPHONE_METHOD:Ljava/lang/String; = "isMicrophoneEnabled"

.field public static final RESTRICTIONPOLICY_MOCKLOCATION_METHOD:Ljava/lang/String; = "isMockLocationEnabled"

.field public static final RESTRICTIONPOLICY_NEWADMININSTALLATION_METHOD:Ljava/lang/String; = "isNewAdminInstallationEnabled"

.field public static final RESTRICTIONPOLICY_NFCENABLEDWITHMSG_METHOD:Ljava/lang/String; = "isNFCEnabledWithMsg"

.field public static final RESTRICTIONPOLICY_NFCENABLED_METHOD:Ljava/lang/String; = "isNFCEnabled"

.field public static final RESTRICTIONPOLICY_NONMARKETAPP_METHOD:Ljava/lang/String; = "isNonMarketAppAllowed"

.field public static final RESTRICTIONPOLICY_NONTRUSTEDAPPINSTALLBLOCKED_METHOD:Ljava/lang/String; = "isNonTrustedAppInstallBlocked"

.field public static final RESTRICTIONPOLICY_ODETRUSTEDBOOTVERIFICATION_METHOD:Ljava/lang/String; = "isOdeTrustedBootVerificationEnabled"

.field public static final RESTRICTIONPOLICY_OTAUPGRADE_METHOD:Ljava/lang/String; = "isOTAUpgradeAllowed"

.field public static final RESTRICTIONPOLICY_POWEROFF_METHOD:Ljava/lang/String; = "isPowerOffAllowed"

.field public static final RESTRICTIONPOLICY_POWERSAVINGMODE_ALLOWED_METHOD:Ljava/lang/String; = "isPowerSavingModeAllowed"

.field public static final RESTRICTIONPOLICY_SAFEMODE_METHOD:Ljava/lang/String; = "isSafeModeAllowed"

.field public static final RESTRICTIONPOLICY_SBEAM_METHOD:Ljava/lang/String; = "isSBeamAllowed"

.field public static final RESTRICTIONPOLICY_SCREENCAPTUREENABLED_METHOD:Ljava/lang/String; = "isScreenCaptureEnabledInternal"

.field public static final RESTRICTIONPOLICY_SCREENCAPTURE_METHOD:Ljava/lang/String; = "isScreenCaptureEnabled"

.field public static final RESTRICTIONPOLICY_SCREENPINNINGALLOWEDASUSER_METHOD:Ljava/lang/String; = "isScreenPinningAllowedAsUser"

.field public static final RESTRICTIONPOLICY_SDCARDENABLED_METHOD:Ljava/lang/String; = "isSdCardEnabled"

.field public static final RESTRICTIONPOLICY_SDCARDMOVEALLOWED_METHOD:Ljava/lang/String; = "isSDCardMoveAllowed"

.field public static final RESTRICTIONPOLICY_SDCARDWRITEALLOW_METHOD:Ljava/lang/String; = "isSDCardWriteAllowed"

.field public static final RESTRICTIONPOLICY_SETTINGSCHANGES_METHOD:Ljava/lang/String; = "isSettingsChangesAllowed"

.field public static final RESTRICTIONPOLICY_SHARELIST_METHOD:Ljava/lang/String; = "isShareListAllowed"

.field public static final RESTRICTIONPOLICY_SMARTCLIPMODE_METHOD:Ljava/lang/String; = "isSmartClipModeAllowed"

.field public static final RESTRICTIONPOLICY_STATUSBAREXPANSIONALLOWEDASUSER_METHOD:Ljava/lang/String; = "isStatusBarExpansionallowedAsUser"

.field public static final RESTRICTIONPOLICY_STOPSYSTEMAPP_METHOD:Ljava/lang/String; = "isStopSystemAppAllowed"

.field public static final RESTRICTIONPOLICY_SVOICEALLOWED_METHOD:Ljava/lang/String; = "isSVoiceAllowed"

.field public static final RESTRICTIONPOLICY_USBDEBUGGING_METHOD:Ljava/lang/String; = "isUsbDebuggingEnabled"

.field public static final RESTRICTIONPOLICY_USBHOSTSTORAGE_METHOD:Ljava/lang/String; = "isUsbHostStorageAllowed"

.field public static final RESTRICTIONPOLICY_USBMASSSTORAGE_METHOD:Ljava/lang/String; = "isUsbMassStorageEnabled"

.field public static final RESTRICTIONPOLICY_USBMEDIAPLAYERAVAILABLE_METHOD:Ljava/lang/String; = "isUsbMediaPlayerAvailable"

.field public static final RESTRICTIONPOLICY_USBTETHERING_METHOD:Ljava/lang/String; = "isUsbTetheringEnabled"

.field public static final RESTRICTIONPOLICY_USERMOBILEDATALIMIT_METHOD:Ljava/lang/String; = "isUserMobileDataLimitAllowed"

.field public static final RESTRICTIONPOLICY_USESECUREKEYPAD_METHOD:Ljava/lang/String; = "isUseSecureKeypadEnabled"

.field public static final RESTRICTIONPOLICY_VIDEORECORD_METHOD:Ljava/lang/String; = "isVideoRecordAllowed"

.field public static final RESTRICTIONPOLICY_VPNALLOWED_METHOD:Ljava/lang/String; = "isVpnAllowed"

.field public static final RESTRICTIONPOLICY_WALLPAPERCHANGE_METHOD:Ljava/lang/String; = "isWallpaperChangeAllowed"

.field public static final RESTRICTIONPOLICY_WIFIDIRECT_METHOD:Ljava/lang/String; = "isWifiDirectAllowed"

.field public static final RESTRICTIONPOLICY_WIFIENABLED_METHOD:Ljava/lang/String; = "isWifiEnabled"

.field public static final RESTRICTIONPOLICY_WIFITETHERING_METHOD:Ljava/lang/String; = "isWifiTetheringEnabled"

.field public static final ROAMINGPOLICY:Ljava/lang/String; = "RoamingPolicy"

.field public static final ROAMINGPOLICY_DATA_METHOD:Ljava/lang/String; = "isRoamingDataEnabled"

.field public static final ROAMINGPOLICY_PUSH_METHOD:Ljava/lang/String; = "isRoamingPushEnabled"

.field public static final ROAMINGPOLICY_SYNC_METHOD:Ljava/lang/String; = "isRoamingSyncEnabled"

.field public static final ROAMINGPOLICY_VOICECALL_METHOD:Ljava/lang/String; = "isRoamingVoiceCallsEnabled"

.field public static final ROAMING_URI:Ljava/lang/String; = "content://com.sec.knox.provider/RoamingPolicy"

.field public static final SEAMSPOLICY:Ljava/lang/String; = "SeamsPolicy"

.field public static final SEAMSPOLICY_SECONTAINERCATEGORY_METHOD:Ljava/lang/String; = "getAllSEContainerCategory"

.field public static final SEAMSPOLICY_SECONTAINERCLIPBOARDMODE_METHOD:Ljava/lang/String; = "getSEContainerClipboardMode"

.field public static final SEAMS_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SeamsPolicy"

.field public static final SECURITYPOLICY:Ljava/lang/String; = "SecurityPolicy"

.field public static final SECURITYPOLICY_DODBANNERVISIBLE_METHOD:Ljava/lang/String; = "isDodBannerVisible"

.field public static final SECURITYPOLICY_GETCREDENTIALSTORAGESTATUS:Ljava/lang/String; = "getCredentialStorageStatus"

.field public static final SECURITYPOLICY_SETDODBANNERVISIBLESTATUS_METHOD:Ljava/lang/String; = "setDodBannerVisibleStatus"

.field public static final SECURITY_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SecurityPolicy"

.field public static final SMARTCARDBROWSERPOLICY:Ljava/lang/String; = "SmartCardBrowserPolicy"

.field public static final SMARTCARDBROWSERPOLICY_AUTHENTICATION_METHOD:Ljava/lang/String; = "isAuthenticationEnabled"

.field public static final SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE_METHOD:Ljava/lang/String; = "getClientCertificateAlias"

.field public static final SMARTCARDBROWSER_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SmartCardBrowserPolicy"

.field public static final SMARTCARDEMAILPOLICY:Ljava/lang/String; = "SmartCardEmailPolicy"

.field public static final SMARTCARDEMAILPOLICY_CREDENTIALREQUIRED_METHOD:Ljava/lang/String; = "isCredentialRequired"

.field public static final SMARTCARDEMAILPOLICY_SMIMEENCRYPTIONCERTIFICATE_METHOD:Ljava/lang/String; = "getSMIMEEncryptionCertificate"

.field public static final SMARTCARDEMAILPOLICY_SMIMESIGNATURECERTIFICATE_METHOD:Ljava/lang/String; = "getSMIMESignatureCertificate"

.field public static final SMARTCARDEMAIL_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SmartCardEmailPolicy"

.field public static final SMARTCARD_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SmartCardBrowserPolicy"

.field public static final SPDCONTROLPOLICY:Ljava/lang/String; = "SPDControlPolicy"

.field public static final SPDCONTROLPOLICY_ISSPDAUTOMATICSPDUPDATEENABLED_METHOD:Ljava/lang/String; = "isSPDAutomaticUpdateEnabled"

.field public static final SPDCONTROL_URI:Ljava/lang/String; = "content://com.sec.knox.provider/SPDControlPolicy"

.field public static final VPNPOLICY:Ljava/lang/String; = "vpnPolicy"

.field public static final VPNPOLICY_CHECKRACOONSECURITY_METHOD:Ljava/lang/String; = "checkRacoonSecurity"

.field public static final VPNPOLICY_USERADDPROFILESALLOWED_METHOD:Ljava/lang/String; = "isUserAddProfilesAllowed"

.field public static final VPNPOLICY_USERCHANGEPROFILESALLOWED_METHOD:Ljava/lang/String; = "isUserChangeProfilesAllowed"

.field public static final VPNPOLICY_USERSETALWAYSONALLOWED_METHOD:Ljava/lang/String; = "isUserSetAlwaysOnAllowed"

.field public static final VPNPOLICY_VPNALLOWED_METHOD:Ljava/lang/String; = "isVpnAllowed"

.field public static final VPN_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/vpnPolicy"

.field public static final WIFIPOLICY:Ljava/lang/String; = "WifiPolicy"

.field public static final WIFIPOLICY_ALLOWUSERPOLICYCHANGES_METHOD:Ljava/lang/String; = "getAllowUserPolicyChanges"

.field public static final WIFIPOLICY_ALLOWUSERPROFILES_METHOD:Ljava/lang/String; = "getAllowUserProfiles"

.field public static final WIFIPOLICY_ALLSSIDBLACKLIST_METHOD:Ljava/lang/String; = "getAllSsidBlacklist"

.field public static final WIFIPOLICY_ALLSSIDWHITELIST_METHOD:Ljava/lang/String; = "getAllSsidWhitelist"

.field public static final WIFIPOLICY_AUTOMATICCONNECTION_METHOD:Ljava/lang/String; = "getAutomaticConnectionToWifi"

.field public static final WIFIPOLICY_EDMADDORUPDATE_METHOD:Ljava/lang/String; = "edmAddOrUpdate"

.field public static final WIFIPOLICY_ENTERPRISENETWORK_METHOD:Ljava/lang/String; = "isEnterpriseNetwork"

.field public static final WIFIPOLICY_OPENWIFIAPALLOWED_METHOD:Ljava/lang/String; = "isOpenWifiApAllowed"

.field public static final WIFIPOLICY_PASSWORDHIDDEN_METHOD:Ljava/lang/String; = "getPasswordHidden"

.field public static final WIFIPOLICY_PROMPTCREDENTIAL_METHOD:Ljava/lang/String; = "getPromptCredentialsEnabled"

.field public static final WIFIPOLICY_REMOVENETWORKCONFIGURATION_METHOD:Ljava/lang/String; = "removeNetworkConfiguration"

.field public static final WIFIPOLICY_WIFIAPSETTINGUSERMODIFICATION_METHOD:Ljava/lang/String; = "isWifiApSettingUserModificationAllowed"

.field public static final WIFIPOLICY_WIFISSIDRESTRICTIONACTIVE_METHOD:Ljava/lang/String; = "isWifiSsidRestrictionActive"

.field public static final WIFIPOLICY_WIFISTATECHANGEALLOWED_METHOD:Ljava/lang/String; = "isWifiStateChangeAllowed"

.field public static final WIFI_URI:Ljava/lang/String; = "content://com.sec.knox.provider2/WifiPolicy"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
