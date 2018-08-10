.class public Landroid/telephony/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final CCC_LENGTH:I

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DBG:Z = false

.field private static final ECC_CATEGORY_Ambulance:I = 0x2

.field private static final ECC_CATEGORY_Cyber_Terror:I = 0x13

.field private static final ECC_CATEGORY_Default_Emergency_Center:I = 0x0

.field private static final ECC_CATEGORY_Drug_Report:I = 0x11

.field private static final ECC_CATEGORY_Fire_Brigade:I = 0x4

.field private static final ECC_CATEGORY_Marine_Guard:I = 0x8

.field private static final ECC_CATEGORY_Mountain_Rescue:I = 0x10

.field private static final ECC_CATEGORY_National_Intelligence_Service_KT:I = 0x7

.field private static final ECC_CATEGORY_National_Intelligence_Service_SKT:I = 0x6

.field private static final ECC_CATEGORY_Normal_Call:I = 0xff

.field private static final ECC_CATEGORY_Police:I = 0x1

.field private static final ECC_CATEGORY_School_Violence:I = 0x12

.field private static final ECC_CATEGORY_Smuggling_Report:I = 0x9

.field private static final ECC_CATEGORY_Spy_Report:I = 0x3

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_KOREA:I = 0x52

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field private static final JAPAN_ISO_COUNTRY_CODE:Ljava/lang/String; = "JP"

.field private static final KEYPAD_MAP:Landroid/util/SparseIntArray;

.field private static final KOREA_ISO_COUNTRY_CODE:Ljava/lang/String; = "KR"

.field private static final KRNP_STATE_0505_START:I = 0xe

.field private static final KRNP_STATE_AREA_SEOUL:I = 0x6

.field private static final KRNP_STATE_EXCEPT_CASE_1:I = 0xa

.field private static final KRNP_STATE_EXCEPT_CASE_2:I = 0xb

.field private static final KRNP_STATE_NORMAL:I = 0x5

.field private static final KRNP_STATE_PLUS:I = 0x9

.field private static final KRNP_STATE_SHARP:I = 0xd

.field private static final KRNP_STATE_SHARP_NINE:I = 0x8

.field private static final KRNP_STATE_STAR:I = 0xc

.field private static final KRNP_STATE_ZERO_START:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "PhoneNumberUtils"

.field private static final MCC_OTA_URI:Landroid/net/Uri;

.field static final MIN_MATCH:I = 0x7

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_IDP_STRING:Ljava/lang/String; = "011"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field private static final OTALOOKUP_INDEX_AREA_CITY_CODE:I = 0x8

.field private static final OTALOOKUP_INDEX_COUNTRY_CODE:I = 0x6

.field private static final OTALOOKUP_INDEX_COUNTRY_NAME:I = 0x1

.field private static final OTALOOKUP_INDEX_IDD:I = 0x3

.field private static final OTALOOKUP_INDEX_MCC:I = 0x2

.field private static final OTALOOKUP_INDEX_NANP:I = 0x5

.field private static final OTALOOKUP_INDEX_NATIONAL_NUMBER_LENGTH:I = 0x9

.field private static final OTALOOKUP_INDEX_NBPCD:I = 0x7

.field private static final OTALOOKUP_INDEX_NDD:I = 0x4

.field public static final OTA_COUNTRY_MCC_KEY:Ljava/lang/String; = "otaCountryMccKey"

.field private static final OTA_COUNTRY_URI:Landroid/net/Uri;

.field public static final PAUSE:C = ','

.field private static final PLUS_SIGN_CHAR:C = '+'

.field private static final PLUS_SIGN_STRING:Ljava/lang/String; = "+"

.field private static final REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

.field public static final TOA_International:I = 0x91

.field public static final TOA_Unknown:I = 0x81

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field public static isAssistedDialingNumber:Z

.field private static isCDMARegistered:Z

.field private static isGSMRegistered:Z

.field private static isNANPCountry:Z

.field private static isNetRoaming:Z

.field private static isOTANANPCountry:Z

.field private static mCursor:Landroid/database/Cursor;

.field private static mCursorCountry:Landroid/database/Cursor;

.field private static numberLength:I

.field private static otaCountryCountryCode:Ljava/lang/String;

.field private static otaCountryIDDPrefix:Ljava/lang/String;

.field private static otaCountryMCC:Ljava/lang/String;

.field private static otaCountryNDDPrefix:Ljava/lang/String;

.field private static otaCountryName:Ljava/lang/String;

.field private static refCountryAreaCode:Ljava/lang/String;

.field private static refCountryCountryCode:Ljava/lang/String;

.field private static refCountryIDDPrefix:Ljava/lang/String;

.field private static refCountryMCC:Ljava/lang/String;

.field private static refCountryNDDPrefix:Ljava/lang/String;

.field private static refCountryName:Ljava/lang/String;

.field private static refCountryNationalNumberLength:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0x33

    const/16 v5, 0x32

    const/16 v4, 0x39

    const/16 v3, 0x37

    const/4 v2, 0x0

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    sput v2, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const-string/jumbo v0, "content://assisteddialing/refcountry"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const-string/jumbo v0, "content://assisteddialing/mcc_otalookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://assisteddialing/ota_country"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    sput-boolean v2, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    const-string/jumbo v0, "[\\+]?[0-9.-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "US"

    aput-object v1, v0, v2

    const-string/jumbo v1, "CA"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "AS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "AI"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "AG"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "BS"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "BB"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "BM"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "VG"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "KY"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "DM"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "DO"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "GD"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "GU"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "JM"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "PR"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "MS"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "MP"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "KN"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "LC"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "VC"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "TT"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const-string/jumbo v1, "TC"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const-string/jumbo v1, "VI"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x62

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x63

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x41

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x42

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x65

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x66

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x67

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x68

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x69

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x47

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x48

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x49

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4a

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4c

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x6f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4d

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4e

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x4f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x70

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x51

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x52

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x53

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x74

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x75

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x76

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x54

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x55

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x56

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x79

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x57

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x58

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x59

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    const/16 v1, 0x5a

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v0, 0x64

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v0, v0

    sput v0, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/PhoneNumberUtils;->CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method private static DocomoNumberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v9

    move v8, v9

    const/16 v14, 0x2b

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    const/4 v4, 0x1

    :goto_0
    const/16 v14, 0x23

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    const/4 v5, 0x1

    :goto_1
    const/16 v14, 0x2a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_3

    const/4 v6, 0x1

    :goto_2
    if-eqz v4, :cond_0

    add-int/lit8 v8, v9, -0x1

    :cond_0
    if-nez v8, :cond_4

    const/4 v14, 0x0

    return-object v14

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v14, v8, 0x1

    div-int/lit8 v12, v14, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_5

    const/4 v3, 0x2

    :cond_5
    add-int/2addr v12, v3

    new-array v11, v12, [B

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v9, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v14, 0x2b

    if-ne v1, v14, :cond_6

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    and-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_7

    const/4 v13, 0x4

    :goto_5
    shr-int/lit8 v14, v2, 0x1

    add-int/2addr v14, v3

    aget-byte v15, v11, v14

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v16

    and-int/lit8 v16, v16, 0xf

    shl-int v16, v16, v13

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v11, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const/4 v13, 0x0

    goto :goto_5

    :cond_8
    and-int/lit8 v14, v2, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_9

    shr-int/lit8 v14, v2, 0x1

    add-int/2addr v14, v3

    aget-byte v15, v11, v14

    or-int/lit16 v15, v15, 0xf0

    int-to-byte v15, v15

    aput-byte v15, v11, v14

    :cond_9
    const/4 v10, 0x0

    if-eqz p1, :cond_a

    const/4 v14, 0x0

    const/4 v10, 0x1

    add-int/lit8 v15, v12, -0x1

    int-to-byte v15, v15

    aput-byte v15, v11, v14

    :cond_a
    if-eqz v4, :cond_d

    const/16 v14, 0x91

    :goto_6
    int-to-byte v14, v14

    aput-byte v14, v11, v10

    if-nez v5, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    aget-byte v14, v11, v10

    and-int/lit16 v14, v14, 0xf0

    int-to-byte v14, v14

    aput-byte v14, v11, v10

    :cond_c
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "TOA: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget-byte v15, v11, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    return-object v11

    :cond_d
    const/16 v14, 0x81

    goto :goto_6
.end method

.method private static KorMsgbcdToChar(B)C
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x2a

    return v0

    :pswitch_1
    const/16 v0, 0x23

    return v0

    :pswitch_2
    const/16 v0, 0x61

    return v0

    :pswitch_3
    const/16 v0, 0x62

    return v0

    :pswitch_4
    const/16 v0, 0x63

    return v0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static adLog(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "AssistedDialing"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static addTtsSpan(Landroid/text/Spannable;II)V
    .locals 2

    invoke-interface {p0, p1, p2}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {p0, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p2, v4, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static assistedDialFromContactList(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 34

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Called assistedDialFromContactList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    const/16 v5, 0x2b

    if-ne v11, v5, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "retrieveAssistedParams fail. Returning original number"

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    const-string/jumbo v5, "011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    xor-int/lit8 v25, v5, 0x1

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    sget-boolean v32, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    sget-boolean v33, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    const/4 v15, 0x0

    if-eqz v33, :cond_8

    const-string/jumbo v5, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/telephony/TelephonyManager;

    if-eqz v31, :cond_8

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v12

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v20

    const-string/jumbo v5, "us"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "vi"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    const/16 v5, 0xd

    if-eq v12, v5, :cond_6

    const/16 v5, 0x13

    if-ne v12, v5, :cond_d

    :cond_6
    :goto_0
    xor-int/lit8 v5, v20, 0x1

    if-eqz v5, :cond_7

    const/4 v15, 0x1

    :cond_7
    if-eqz v15, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Use CDMA policy (forceVzwHomePolicy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/16 v33, 0x0

    const/16 v32, 0x1

    :cond_8
    if-eqz v32, :cond_2c

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_23

    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-eqz v5, :cond_9

    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    if-nez v5, :cond_9

    if-eqz v15, :cond_16

    :cond_9
    if-eqz v25, :cond_13

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_13

    const/16 v5, 0x31

    if-eq v10, v5, :cond_13

    const/16 v17, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_10

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    if-eqz v5, :cond_10

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_b

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v17, 0x1

    :cond_a
    if-eqz v17, :cond_f

    :cond_b
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_3
    if-nez v17, :cond_12

    const-string/jumbo v5, "011"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing1-1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_d
    const/16 v5, 0x12

    if-ne v12, v5, :cond_7

    goto/16 :goto_0

    :cond_e
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot assist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_f
    :try_start_1
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    :cond_10
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_11

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_11
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    if-eqz v5, :cond_c

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :cond_12
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "011"

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v14, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing1-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_13
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_15

    if-eqz v29, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing4-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_14
    if-eqz v27, :cond_15

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing4-4] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_15
    if-eqz v28, :cond_23

    const-string/jumbo v5, "1"

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string/jumbo v5, "011"

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing5-1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_16
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_1a

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_18

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing2-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_17
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing2-3] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_18
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_1a

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_19

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing3-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing3-3] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_1a
    const/16 v16, 0x0

    const/16 v22, 0x0

    if-nez v28, :cond_1b

    if-eqz v26, :cond_1f

    :cond_1b
    if-eqz v28, :cond_1c

    sget-object v16, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    :goto_4
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing6-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1c
    sget-object v16, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    goto :goto_4

    :cond_1d
    if-eqz v28, :cond_1e

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing6-4] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1e
    if-eqz v26, :cond_23

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing6-5] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_1f
    if-nez v29, :cond_20

    if-eqz v27, :cond_23

    :cond_20
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_23

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_22

    const/16 v18, 0x0

    if-eqz v29, :cond_21

    sget-object v18, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    :goto_5
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v5, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing7-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_21
    sget-object v18, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    goto :goto_5

    :cond_22
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing7-3] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_23
    const/16 v5, 0x2b

    if-ne v10, v5, :cond_2c

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-eqz v5, :cond_25

    sget-boolean v5, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_25

    xor-int/lit8 v5, v15, 0x1

    if-eqz v5, :cond_25

    if-eqz v24, :cond_24

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing8-1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_24
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing8-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_25
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2c

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xb

    if-ne v5, v6, :cond_26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x31

    if-ne v5, v6, :cond_26

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing9-1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/16 v17, 0x0

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    sput-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_27

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_27
    :goto_6
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_28

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_28

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v6, 0x6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    const/16 v17, 0x1

    :cond_28
    if-nez v17, :cond_2b

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_29

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Number does not start with Country Code, match: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing9-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_2a
    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_6

    :cond_2b
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2c

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v6, v7, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing9-3] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2c
    if-eqz v33, :cond_31

    invoke-static {v10}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_30

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_2e

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_2d

    const-string/jumbo v5, "+"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing10-1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2d
    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ne v5, v6, :cond_31

    const-string/jumbo v5, "+"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing10-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2e
    if-eqz v28, :cond_2f

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string/jumbo v6, "+"

    const/4 v7, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v5, v6}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing11-1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2f
    if-eqz v29, :cond_31

    sget v5, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    if-ne v5, v6, :cond_31

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    sget-object v6, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v6, v5, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing11-2] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_30
    const-string/jumbo v5, "+011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    const-string/jumbo v5, "+"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_31
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[AssistDialing13-1] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v5, 0x0

    sput-boolean v5, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0
.end method

.method public static assistedDialFromDialPad(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 29

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Called assistedDialFromDialPad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x0

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_1
    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x2b

    if-ne v9, v3, :cond_3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Assisted Dialing PhoneNumber is OK: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "retrieveAssistedParams fail. Returning original number"

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Assisted Dialing PhoneNumber is FAILED: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_4
    new-instance v18, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "assisted_dialing"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    const/4 v12, 0x1

    :goto_0
    if-eqz v12, :cond_b

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    :goto_1
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", numberBeginsWithRefCountryIDDPrefixWithAdEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", numberBeginsWithOTAIDDPrefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    sget-boolean v27, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    sget-boolean v28, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    const/4 v13, 0x0

    if-eqz v28, :cond_8

    const-string/jumbo v3, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telephony/TelephonyManager;

    if-eqz v26, :cond_8

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getDataNetworkType()I

    move-result v10

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v26 .. v26}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v17

    const-string/jumbo v3, "us"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "vi"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    const/16 v3, 0xd

    if-eq v10, v3, :cond_6

    const/16 v3, 0x13

    if-ne v10, v3, :cond_c

    :cond_6
    :goto_2
    xor-int/lit8 v3, v17, 0x1

    if-eqz v3, :cond_7

    const/4 v13, 0x1

    :cond_7
    if-eqz v13, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Use CDMA policy (forceVzwHomePolicy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/16 v28, 0x0

    const/16 v27, 0x1

    :cond_8
    if-eqz v27, :cond_18

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-eqz v3, :cond_9

    sget-boolean v3, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    if-nez v3, :cond_9

    if-eqz v13, :cond_d

    :cond_9
    const-string/jumbo v3, "011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v23, v3, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-eqz v3, :cond_18

    if-eqz v23, :cond_18

    sget v3, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_18

    const/16 v3, 0x31

    if-eq v8, v3, :cond_18

    const-string/jumbo v3, "011"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[AssistDialingA-1] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v3, 0x1

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_b
    const/16 v25, 0x0

    goto/16 :goto_1

    :cond_c
    const/16 v3, 0x12

    if-ne v10, v3, :cond_7

    goto/16 :goto_2

    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_e

    const/16 v3, 0x2b

    if-ne v8, v3, :cond_18

    :cond_e
    sget v3, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_18

    sget v3, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_f

    const/16 v3, 0x31

    if-eq v8, v3, :cond_18

    :cond_f
    const/4 v14, 0x0

    const/16 v19, 0x0

    if-nez v25, :cond_10

    if-eqz v24, :cond_11

    :cond_10
    if-eqz v25, :cond_12

    sget-object v14, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    :cond_11
    :goto_3
    const/16 v3, 0x2b

    if-ne v8, v3, :cond_14

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_13

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[AssistDialingB-2] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_12
    sget-object v14, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    :cond_13
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5, v3}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[AssistDialingB-3] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_14
    if-nez v25, :cond_15

    if-eqz v24, :cond_18

    :cond_15
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    sget-object v4, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[AssistDialingC-2] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    if-eqz v24, :cond_16

    const/4 v3, 0x0

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    :goto_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_16
    const/4 v3, 0x1

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Cannot assist: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    return-object p0

    :cond_17
    if-eqz v25, :cond_18

    :try_start_1
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[AssistDialingC-3] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v3, 0x1

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_18
    if-eqz v28, :cond_1f

    if-eqz v25, :cond_19

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "+"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Convert reference country IDD prefix to +: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_19
    if-eqz v12, :cond_1a

    const-string/jumbo v3, "+011"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string/jumbo v3, "+"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Convert +011 prefix to +: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1a
    if-eqz v24, :cond_1f

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v15, 0x0

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    sput-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1b

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_1b
    :goto_5
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1c

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1c

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v15, 0x1

    :cond_1c
    if-eqz v15, :cond_1e

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v3

    sget-object v4, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x6

    if-lt v3, v4, :cond_1e

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "+"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v3, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Convert local IDD prefix to +: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1d
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    :cond_1e
    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1f

    sget-object v3, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[AssistDialingD-1] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/4 v3, 0x0

    sput-boolean v3, Landroid/telephony/PhoneNumberUtils;->isAssistedDialingNumber:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0
.end method

.method private static bcdToChar(B)C
    .locals 1

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x30

    int-to-char v0, v0

    return v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x2a

    return v0

    :pswitch_1
    const/16 v0, 0x23

    return v0

    :pswitch_2
    const/16 v0, 0x2c

    return v0

    :pswitch_3
    const/16 v0, 0x4e

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static calledPartyBCDFragmentToString([BII)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static calledPartyBCDToString([BII)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v5, p2, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    if-ge p2, v8, :cond_0

    const-string/jumbo v5, ""

    return-object v5

    :cond_0
    aget-byte v5, p0, p1

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0x90

    if-ne v5, v6, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/lit8 v5, p1, 0x1

    add-int/lit8 v6, p2, -0x1

    invoke-static {v3, p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, ""

    return-object v5

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "(^[#*])(.*)([#*])(.*)(#)$"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, ""

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "(^[#*])(.*)([#*])(.*)"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "+"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2b

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    sget-boolean v5, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v5, :cond_1

    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_1

    sget-boolean v5, Landroid/os/Build;->IS_ENG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "telephony.test.assisteddial"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "false"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v4, ""

    const-string/jumbo v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-le v5, v7, :cond_0

    const-string/jumbo v4, "us"

    const-string/jumbo v5, "234"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v4, "gb"

    :cond_0
    :goto_0
    const-string/jumbo v5, "PhoneNumberUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Assited Dialing Testmode - currIso: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", defaultIso: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    move-object v3, v4

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v6

    invoke-static {p0, v5, v6}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    const-string/jumbo v5, "460"

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v4, "cn"

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCode(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {p0, v2, v3, p1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    return-object p0
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    move-object v3, p0

    if-ne p1, p2, :cond_4

    if-ne p1, v9, :cond_4

    const/4 v5, 0x1

    :goto_0
    if-eqz p0, :cond_3

    const-string/jumbo v6, "+"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    const/4 v2, 0x0

    move-object v4, p0

    const/4 v3, 0x0

    :cond_0
    if-eqz v5, :cond_5

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel()Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "LGT"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "domestic"

    const-string/jumbo v7, "ril.currentplmn"

    const-string/jumbo v8, "domestic"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string/jumbo v6, "+82"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_1
    xor-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_6

    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    if-nez v3, :cond_7

    move-object v3, v1

    :goto_3
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v9, :cond_9

    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    :cond_3
    return-object v3

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    :cond_5
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_6
    invoke-static {v1, v5}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    const-string/jumbo v6, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_9
    if-gez v0, :cond_a

    const-string/jumbo v2, ""

    :cond_a
    const-string/jumbo v6, "wrong postDialStr="

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;IILandroid/content/Context;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    move-object v3, p0

    if-ne p1, p2, :cond_3

    if-ne p1, v8, :cond_3

    const/4 v5, 0x1

    :goto_0
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v6

    or-int/2addr v5, v6

    if-eqz p0, :cond_2

    const-string/jumbo v6, "+"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    const/4 v2, 0x0

    move-object v4, p0

    const/4 v3, 0x0

    :cond_0
    if-eqz v5, :cond_4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v1, v5, p3}, Landroid/telephony/PhoneNumberUtils;->processPlusCode(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    if-nez v3, :cond_5

    move-object v3, v1

    :goto_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->findDialableIndexFromPostDialStr(Ljava/lang/String;)I

    move-result v0

    if-lt v0, v8, :cond_7

    invoke-static {v0, v3, v2}, Landroid/telephony/PhoneNumberUtils;->appendPwCharBackToOrigDialStr(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    :cond_2
    return-object v3

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_6
    const-string/jumbo v6, "checkAndProcessPlusCode: null newDialStr"

    invoke-static {v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_7
    if-gez v0, :cond_8

    const-string/jumbo v2, ""

    :cond_8
    const-string/jumbo v6, "wrong postDialStr="

    invoke-static {v6, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static cdmaCheckAndProcessPlusCodeForSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    invoke-static {p0, v1, v1}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    return-object p0
.end method

.method private static charToBCD(C)I
    .locals 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_1

    const/16 v0, 0xa

    return v0

    :cond_1
    const/16 v0, 0x23

    if-ne p0, v0, :cond_2

    const/16 v0, 0xb

    return v0

    :cond_2
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_3

    const/16 v0, 0xc

    return v0

    :cond_3
    const/16 v0, 0x4e

    if-ne p0, v0, :cond_4

    const/16 v0, 0xd

    return v0

    :cond_4
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_5

    const/16 v0, 0xe

    return v0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid char for BCD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkAssistedDialingTestmode(Landroid/content/Context;)V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x1

    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "telephony.test.assisteddial"

    const-string/jumbo v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v1, "false"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, ":"

    invoke-virtual {v6, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    :goto_0
    array-length v1, v7

    if-ge v9, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Assisted Dialing Testmode Parameter["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "] : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v7, v9

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    array-length v1, v7

    if-lez v1, :cond_4

    const-string/jumbo v1, "gsm"

    aget-object v3, v7, v11

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v10

    :goto_1
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    array-length v1, v7

    if-le v1, v10, :cond_3

    const-string/jumbo v1, "roam"

    aget-object v3, v7, v10

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v10

    :goto_2
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    array-length v1, v7

    if-le v1, v12, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "310"

    aget-object v3, v7, v12

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "310 to 316"

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :goto_3
    sput-object v2, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    if-nez v8, :cond_8

    const-string/jumbo v1, "Assisted Dialing Testmode - cursor is null"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    :goto_4
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string/jumbo v1, "========== Assisted Dialing Parameter for Testmode =========="

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->displayAssistedParams()V

    :cond_4
    return-void

    :cond_5
    move v1, v11

    goto :goto_1

    :cond_6
    move v1, v11

    goto :goto_2

    :cond_7
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    new-array v4, v10, [Ljava/lang/String;

    aget-object v5, v7, v12

    aput-object v5, v4, v11

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_3

    :cond_8
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_9

    const-string/jumbo v1, "Assisted Dialing Testmode - cursor is empty"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_a

    const-string/jumbo v1, ""

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    :cond_a
    const/4 v1, 0x5

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :goto_5
    sput-boolean v10, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string/jumbo v2, "310 to 316"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "310"

    :goto_6
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    goto :goto_4

    :cond_b
    move v10, v11

    goto :goto_5

    :cond_c
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string/jumbo v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string/jumbo v1, "430"

    goto :goto_6

    :cond_d
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    goto :goto_6
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt p2, p1, :cond_3

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v1

    if-ltz v1, :cond_2

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-static {p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 14

    const/16 v13, 0x4e

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    :goto_0
    return v10

    :cond_1
    move v10, v11

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_4

    :cond_3
    return v11

    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    const/4 v9, 0x0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v12

    if-nez v12, :cond_6

    add-int/lit8 v4, v4, -0x1

    const/4 v9, 0x1

    add-int/lit8 v7, v7, 0x1

    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v12

    if-nez v12, :cond_7

    add-int/lit8 v5, v5, -0x1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    :cond_7
    if-nez v9, :cond_5

    if-eq v1, v0, :cond_9

    if-eq v0, v13, :cond_9

    if-eq v1, v13, :cond_9

    :cond_8
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v12

    if-ge v6, v12, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v2, v12, v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v12

    sub-int v3, v12, v8

    if-ne v2, v3, :cond_a

    if-ne v2, v6, :cond_a

    return v10

    :cond_9
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    return v11

    :cond_b
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v12

    if-lt v6, v12, :cond_d

    if-ltz v4, :cond_c

    if-gez v5, :cond_d

    :cond_c
    return v10

    :cond_d
    add-int/lit8 v12, v4, 0x1

    invoke-static {p0, v12}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_e

    add-int/lit8 v12, v5, 0x1

    invoke-static {p1, v12}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_e

    return v10

    :cond_e
    add-int/lit8 v12, v4, 0x1

    invoke-static {p0, v12}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_f

    add-int/lit8 v12, v5, 0x1

    invoke-static {p1, v12}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_f

    return v10

    :cond_f
    add-int/lit8 v12, v5, 0x1

    invoke-static {p1, v12}, Landroid/telephony/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_10

    add-int/lit8 v12, v4, 0x1

    invoke-static {p0, v12}, Landroid/telephony/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_10

    return v10

    :cond_10
    return v11
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    :goto_0
    return v18

    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    const/16 v18, 0x0

    return v18

    :cond_3
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    invoke-static/range {p1 .. p2}, Landroid/telephony/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    const/4 v5, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    iget v0, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    const/16 v18, 0x0

    return v18

    :cond_4
    const/4 v13, 0x0

    const/4 v5, 0x1

    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    add-int/lit8 v3, v3, -0x1

    const/4 v14, 0x1

    :cond_7
    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    add-int/lit8 v4, v4, -0x1

    const/4 v14, 0x1

    :cond_8
    if-nez v14, :cond_6

    if-eq v8, v9, :cond_e

    const/16 v18, 0x0

    return v18

    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    const/4 v13, 0x0

    goto :goto_1

    :cond_a
    if-eqz v6, :cond_c

    iget v10, v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    iget v11, v7, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    if-ltz v15, :cond_b

    move v10, v15

    const/16 v16, 0x1

    goto :goto_3

    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    if-ltz v15, :cond_5

    move v11, v15

    const/16 v17, 0x1

    goto :goto_1

    :cond_e
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_f
    if-eqz v13, :cond_17

    if-eqz v16, :cond_11

    if-gt v10, v3, :cond_11

    :cond_10
    if-eqz p2, :cond_13

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    return v18

    :cond_11
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_10

    if-eqz v17, :cond_14

    if-gt v11, v4, :cond_14

    :cond_12
    if-eqz p2, :cond_16

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    return v18

    :cond_13
    const/16 v18, 0x0

    return v18

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Landroid/telephony/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-nez v18, :cond_12

    :cond_15
    const/16 v18, 0x1

    return v18

    :cond_16
    const/16 v18, 0x0

    return v18

    :cond_17
    xor-int/lit8 v12, v5, 0x1

    :goto_4
    if-lt v3, v10, :cond_1a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    if-eqz v12, :cond_19

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_19

    const/4 v12, 0x0

    :cond_18
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_19
    const/16 v18, 0x0

    return v18

    :cond_1a
    :goto_5
    if-lt v4, v11, :cond_15

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1b

    if-eqz v12, :cond_1c

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    const/4 v12, 0x0

    :cond_1b
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    :cond_1c
    const/16 v18, 0x0

    return v18
.end method

.method public static convertAndStrip(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-char v0, v3, v1

    sget-object v4, Landroid/telephony/PhoneNumberUtils;->KEYPAD_MAP:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    int-to-char v4, v4

    aput-char v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    return-object v4
.end method

.method public static convertPreDial(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isPause(C)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v0, 0x2c

    :cond_1
    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isToneWait(C)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v0, 0x3b

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static convertSMSDestinationAddress(Ljava/lang/String;Landroid/content/Context;I)Ljava/lang/String;
    .locals 20

    invoke-static/range {p0 .. p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_1

    :cond_0
    const-string/jumbo v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SMS Destination Number is OK "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-nez v17, :cond_2

    return-object v16

    :cond_1
    const-string/jumbo v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SMS Destination Number might be email address"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :cond_2
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v17, 0x80

    move/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    const-string/jumbo v17, "011"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    xor-int/lit8 v13, v17, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x5

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "SMS Destination numberLength: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " numberBeginsWithOTAIDDPrefix: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " numberBeginsWithNonUSIDDPrefix: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " otaCountryIDDPrefix: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    sget-object v19, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " number : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "**********"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v6, 0x0

    sget-boolean v17, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    if-eqz v17, :cond_f

    sget-boolean v17, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    if-nez v17, :cond_5

    const-string/jumbo v17, "PhoneNumberUtils"

    const-string/jumbo v18, "Address Rule in VZW Network"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v17

    if-eqz v17, :cond_4

    if-eqz v13, :cond_4

    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v15, v0, :cond_4

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v15, v0, :cond_3

    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v0, v3, :cond_4

    :cond_3
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string/jumbo v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :pswitch_1
    const/16 v17, 0x1

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    const/16 v17, 0x0

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    const/16 v17, 0x0

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v17, "PhoneNumberUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Cannot convert: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v16

    :pswitch_2
    const/16 v17, 0x1

    :try_start_2
    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    const/16 v17, 0x0

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    const/16 v17, 0x1

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    goto :goto_0

    :pswitch_3
    const/16 v17, 0x0

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    const/16 v17, 0x1

    sput-boolean v17, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    goto/16 :goto_0

    :cond_4
    const/16 v17, 0x1

    const/16 v18, 0x1

    invoke-static/range {v16 .. v18}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCodeByNumberFormat(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_5
    const-string/jumbo v17, "PhoneNumberUtils"

    const-string/jumbo v18, "Address Rule in CDMA Internatinal Roaming"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v17

    if-nez v17, :cond_6

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_f

    :cond_6
    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v15, v0, :cond_f

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v15, v0, :cond_7

    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v0, v3, :cond_f

    :cond_7
    add-int/lit8 v17, v15, -0xb

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v12, 0x0

    if-eqz v14, :cond_8

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_8
    if-eqz v14, :cond_b

    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v18, v6, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_9
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_a

    const-string/jumbo v17, "PhoneNumberUtils"

    const-string/jumbo v18, "Found Country Code after IDD"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v17, "011"

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v10, v0, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    const-string/jumbo v17, "PhoneNumberUtils"

    const-string/jumbo v18, "No Condition"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_b
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_e

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_c
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string/jumbo v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    const-string/jumbo v17, "PhoneNumberUtils"

    const-string/jumbo v18, "1NANP is not matched"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_e
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_f

    const-string/jumbo v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_f
    sget-boolean v17, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-eqz v17, :cond_1a

    const-string/jumbo v17, "PhoneNumberUtils"

    const-string/jumbo v18, "Address Rule in GSM/UMTS"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v17

    if-nez v17, :cond_10

    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_1a

    :cond_10
    const/16 v17, 0xb

    move/from16 v0, v17

    if-lt v15, v0, :cond_1a

    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v15, v0, :cond_11

    const/16 v17, 0x31

    move/from16 v0, v17

    if-eq v0, v3, :cond_1a

    :cond_11
    add-int/lit8 v17, v15, -0xb

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    const/4 v12, 0x0

    if-eqz v14, :cond_12

    sget-object v7, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    invoke-virtual/range {v16 .. v18}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    :cond_12
    if-eqz v14, :cond_15

    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v18, v6, 0xb

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const-string/jumbo v18, "+"

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_13
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_14

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v17, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const-string/jumbo v18, "011"

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v10, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_14
    const-string/jumbo v17, "PhoneNumberUtils"

    const-string/jumbo v18, "No condition is matched in IDD"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_15
    const/16 v17, 0x2b

    move/from16 v0, v17

    if-ne v0, v3, :cond_19

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xc

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_16
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_17

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_17
    const-string/jumbo v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_18

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_18
    const-string/jumbo v17, "PhoneNumberUtils"

    const-string/jumbo v18, "No condition is matched in \'+\'"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_19
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const-string/jumbo v17, "011"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    return-object v17

    :cond_1a
    const-string/jumbo v17, "PhoneNumberUtils"

    const-string/jumbo v18, "Can\'t find any match in this number"

    invoke-static/range {v17 .. v18}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static convertSipUriToTelUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sip"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "[@;:]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-nez v3, :cond_1

    return-object p0

    :cond_1
    aget-object v0, v1, v4

    const-string/jumbo v3, "tel"

    const/4 v4, 0x0

    invoke-static {v3, v0, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3
.end method

.method public static convertToEmergencyNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v7, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object p0

    :cond_1
    sget-object v9, Landroid/telephony/PhoneNumberUtils;->CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

    array-length v10, v9

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_7

    aget-object v0, v9, v8

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    array-length v6, v2

    const/4 v11, 0x2

    if-ne v6, v11, :cond_3

    const/4 v6, 0x1

    aget-object v1, v2, v6

    aget-object v6, v2, v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    aget-object v6, v2, v7

    const-string/jumbo v11, ","

    invoke-virtual {v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    if-nez v4, :cond_5

    :cond_4
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_0

    :cond_5
    array-length v6, v4

    if-eqz v6, :cond_4

    array-length v11, v4

    move v6, v7

    :goto_1
    if-ge v6, v11, :cond_4

    aget-object v3, v4, v6

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    return-object p0
.end method

.method public static createTtsSpan(Ljava/lang/String;)Landroid/text/style/TtsSpan;
    .locals 6

    const/4 v4, 0x0

    if-nez p0, :cond_0

    return-object v4

    :cond_0
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, p0, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    new-instance v0, Landroid/text/style/TtsSpan$TelephoneBuilder;

    invoke-direct {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;-><init>()V

    if-nez v2, :cond_1

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    :goto_1
    invoke-virtual {v0}, Landroid/text/style/TtsSpan$TelephoneBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCode()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setCountryCode(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    :cond_2
    invoke-virtual {v2}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/text/style/TtsSpan$TelephoneBuilder;->setNumberParts(Ljava/lang/String;)Landroid/text/style/TtsSpan$TelephoneBuilder;

    goto :goto_1
.end method

.method public static createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Spannable;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    return-object v0
.end method

.method private static displayAssistedParams()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), refCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refCountryAreaCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refCountryNationalNumberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isNANPCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", refCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isGSMRegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isCDMARegistered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isNetRoaming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", numberLength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", otaCountryName: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "), otaCountryMCC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", otaCountryIDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", otaCountryNDDPrefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isOTANANPCountry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", otaCountryCountryCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    return-void
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    if-nez p0, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_3

    if-eqz v1, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :cond_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static findDialableIndexFromPostDialStr(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isReallyDialable(C)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/telephony/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    return-void
.end method

.method public static formatKRnpNumber(Landroid/text/Editable;)V
    .locals 13

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "-"

    const-string/jumbo v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v10, 0xc

    if-le v4, v10, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    return-void

    :cond_0
    const/4 v10, 0x2

    if-ge v3, v10, :cond_1

    return-void

    :cond_1
    const/4 v9, 0x5

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x6

    if-ge v3, v10, :cond_4

    const-string/jumbo v10, "-"

    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v6, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_3

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    const/4 v6, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_7

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x20

    if-eq v10, v11, :cond_5

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2f

    if-ne v10, v11, :cond_6

    :cond_5
    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_7
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-eq v3, v10, :cond_8

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    :cond_8
    const/4 v10, 0x1

    if-ge v3, v10, :cond_9

    return-void

    :cond_9
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_e

    const/4 v10, 0x2

    if-ge v3, v10, :cond_a

    return-void

    :cond_a
    const/4 v10, 0x1

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x32

    if-ne v10, v11, :cond_b

    const/4 v9, 0x6

    :goto_2
    const/4 v10, 0x0

    invoke-interface {p0, v10, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v6, 0x0

    :goto_3
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v10

    if-ge v6, v10, :cond_22

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_21

    add-int/lit8 v10, v6, 0x1

    invoke-interface {p0, v6, v10}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_3

    :cond_b
    const/4 v10, 0x3

    if-ge v3, v10, :cond_c

    return-void

    :cond_c
    const-string/jumbo v10, "050"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_d

    const/16 v9, 0xe

    goto :goto_2

    :cond_d
    const/4 v9, 0x7

    goto :goto_2

    :cond_e
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2a

    if-ne v10, v11, :cond_15

    const/4 v10, 0x4

    if-ge v3, v10, :cond_f

    return-void

    :cond_f
    const-string/jumbo v10, "*23#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string/jumbo v10, "*22#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string/jumbo v10, "*31#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    :cond_10
    const/4 v10, 0x5

    if-le v3, v10, :cond_11

    return-void

    :cond_11
    const/16 v9, 0xa

    goto :goto_2

    :cond_12
    const-string/jumbo v10, "*230#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v10, 0x6

    if-le v3, v10, :cond_13

    return-void

    :cond_13
    const/16 v9, 0xb

    goto :goto_2

    :cond_14
    return-void

    :cond_15
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x23

    if-ne v10, v11, :cond_1b

    const/4 v10, 0x2

    if-ge v3, v10, :cond_16

    return-void

    :cond_16
    const/4 v10, 0x1

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x39

    if-ne v10, v11, :cond_18

    const/4 v10, 0x3

    if-le v3, v10, :cond_17

    return-void

    :cond_17
    const/16 v9, 0x8

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v10, "#31#"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1a

    const/4 v10, 0x5

    if-le v3, v10, :cond_19

    return-void

    :cond_19
    const/16 v9, 0xa

    goto/16 :goto_2

    :cond_1a
    return-void

    :cond_1b
    const/4 v10, 0x0

    invoke-interface {p0, v10}, Landroid/text/Editable;->charAt(I)C

    move-result v10

    const/16 v11, 0x2b

    if-ne v10, v11, :cond_1e

    const/4 v10, 0x6

    if-lt v3, v10, :cond_1c

    const/16 v10, 0xe

    if-le v3, v10, :cond_1d

    :cond_1c
    return-void

    :cond_1d
    const/16 v9, 0x9

    goto/16 :goto_2

    :cond_1e
    const/4 v10, 0x5

    if-lt v3, v10, :cond_1f

    const/16 v10, 0xe

    if-le v3, v10, :cond_20

    :cond_1f
    return-void

    :cond_20
    const/4 v9, 0x5

    goto/16 :goto_2

    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    :cond_22
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-interface {p0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "3003003000"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    const-string/jumbo v10, "300-300-3000"

    const/4 v11, 0x0

    invoke-interface {p0, v11, v3, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_23
    const/4 v10, 0x2

    new-array v1, v10, [I

    const/4 v5, 0x0

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    const/4 v10, 0x0

    invoke-interface {p0, v10, v3, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :pswitch_1
    const/4 v10, 0x3

    if-gt v3, v10, :cond_26

    const/4 v5, 0x0

    :cond_24
    :goto_4
    if-eqz v5, :cond_35

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_35

    aget v7, v1, v2

    add-int v10, v7, v2

    if-ltz v10, :cond_25

    add-int v10, v7, v2

    if-gt v10, v3, :cond_25

    add-int v10, v7, v2

    add-int v11, v7, v2

    const-string/jumbo v12, "-"

    invoke-interface {p0, v10, v11, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_26
    const/4 v10, 0x7

    if-gt v3, v10, :cond_27

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto :goto_4

    :cond_27
    const/4 v10, 0x7

    if-le v3, v10, :cond_28

    const/16 v10, 0xa

    if-gt v3, v10, :cond_28

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v10, v1, v11

    add-int/lit8 v10, v3, -0x4

    const/4 v11, 0x1

    aput v10, v1, v11

    const/4 v5, 0x2

    goto :goto_4

    :cond_28
    const/16 v10, 0xa

    if-le v3, v10, :cond_24

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v10, 0x7

    const/4 v11, 0x1

    aput v10, v1, v11

    const/4 v5, 0x2

    goto :goto_4

    :pswitch_2
    const/4 v10, 0x4

    if-gt v3, v10, :cond_29

    const/4 v5, 0x0

    goto :goto_4

    :cond_29
    const/16 v10, 0x8

    if-gt v3, v10, :cond_2a

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto :goto_4

    :cond_2a
    const/16 v10, 0x8

    if-le v3, v10, :cond_2b

    const/16 v10, 0xb

    if-gt v3, v10, :cond_2b

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v10, v1, v11

    add-int/lit8 v10, v3, -0x4

    const/4 v11, 0x1

    aput v10, v1, v11

    const/4 v5, 0x2

    goto :goto_4

    :cond_2b
    const/16 v10, 0xb

    if-le v3, v10, :cond_24

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v10, v1, v11

    const/16 v10, 0x8

    const/4 v11, 0x1

    aput v10, v1, v11

    const/4 v5, 0x2

    goto :goto_4

    :pswitch_3
    const/4 v10, 0x2

    if-gt v3, v10, :cond_2c

    const/4 v5, 0x0

    goto :goto_4

    :cond_2c
    const/4 v10, 0x6

    if-gt v3, v10, :cond_2d

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_2d
    const/4 v10, 0x6

    if-le v3, v10, :cond_2e

    const/16 v10, 0x9

    if-gt v3, v10, :cond_2e

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v10, v1, v11

    add-int/lit8 v10, v3, -0x4

    const/4 v11, 0x1

    aput v10, v1, v11

    const/4 v5, 0x2

    goto/16 :goto_4

    :cond_2e
    const/16 v10, 0x9

    if-le v3, v10, :cond_24

    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v10, 0x6

    const/4 v11, 0x1

    aput v10, v1, v11

    const/4 v5, 0x2

    goto/16 :goto_4

    :pswitch_4
    const/4 v10, 0x2

    if-gt v3, v10, :cond_2f

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_2f
    const/4 v10, 0x2

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto/16 :goto_4

    :pswitch_5
    const/4 v10, 0x4

    if-gt v3, v10, :cond_30

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_30
    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto/16 :goto_4

    :pswitch_6
    const/4 v10, 0x5

    if-gt v3, v10, :cond_31

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_31
    const/4 v10, 0x5

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto/16 :goto_4

    :pswitch_7
    const/16 v10, 0x8

    if-gt v3, v10, :cond_32

    add-int/lit8 v10, v3, -0x4

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_32
    const/16 v10, 0x8

    if-le v3, v10, :cond_24

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto/16 :goto_4

    :pswitch_8
    const/4 v10, 0x3

    if-gt v3, v10, :cond_33

    const/4 v5, 0x0

    goto/16 :goto_4

    :cond_33
    const/4 v10, 0x7

    if-gt v3, v10, :cond_34

    const/4 v10, 0x3

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_34
    const/4 v10, 0x7

    if-le v3, v10, :cond_24

    const/4 v10, 0x4

    const/4 v11, 0x0

    aput v10, v1, v11

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_35
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    const-string/jumbo v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_0

    return-void

    :cond_0
    const/4 v11, 0x5

    if-gt v4, v11, :cond_1

    return-void

    :cond_1
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    new-array v1, v13, [I

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    const/4 v2, 0x0

    move v6, v5

    :goto_0
    if-ge v2, v4, :cond_9

    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :pswitch_1
    if-eqz v7, :cond_3

    if-ne v10, v14, :cond_4

    :cond_3
    const/4 v10, 0x3

    move v5, v6

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    goto :goto_0

    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_5
    if-ne v10, v13, :cond_6

    add-int/lit8 v5, v6, 0x1

    aput v2, v1, v6

    :goto_2
    const/4 v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v11, 0x4

    if-eq v10, v11, :cond_8

    if-eq v7, v13, :cond_7

    const/4 v11, 0x6

    if-ne v7, v11, :cond_8

    :cond_7
    add-int/lit8 v5, v6, 0x1

    aput v2, v1, v6

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_2

    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    goto :goto_1

    :pswitch_4
    if-nez v2, :cond_2

    const/4 v10, 0x2

    move v5, v6

    goto :goto_1

    :cond_9
    const/4 v11, 0x7

    if-ne v7, v11, :cond_c

    add-int/lit8 v5, v6, -0x1

    :goto_3
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_a

    aget v8, v1, v2

    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string/jumbo v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    :goto_5
    if-lez v3, :cond_b

    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_b

    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_b
    return-void

    :cond_c
    move v5, v6

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {v0, p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x0

    const-string/jumbo v8, "#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "*"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v7

    const/4 v6, 0x0

    new-array v8, v13, [Ljava/lang/String;

    const-string/jumbo v9, "SKT"

    aput-object v9, v8, v11

    const-string/jumbo v9, "KTT"

    const/4 v10, 0x1

    aput-object v9, v8, v10

    const-string/jumbo v9, "LGT"

    const/4 v10, 0x2

    aput-object v9, v8, v10

    const-string/jumbo v9, "KOO"

    aput-object v9, v8, v12

    invoke-static {v8}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v2, "000"

    const-string/jumbo v8, "gsm.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v13, :cond_2

    invoke-virtual {v4, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string/jumbo v8, "+"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string/jumbo v8, "ko"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "050"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "450"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    const-string/jumbo v8, "KR"

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v8

    invoke-static {p0, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_4
    :try_start_0
    invoke-virtual {v7, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    invoke-virtual {v7, v5, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    goto :goto_0

    :cond_5
    :try_start_1
    invoke-virtual {v7, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    const-string/jumbo v8, "KR"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v8

    const-string/jumbo v9, "KR"

    invoke-virtual {v7, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_6

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v8, v9, :cond_6

    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v7, v5, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_6
    invoke-virtual {v7, v5, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    goto :goto_0

    :cond_7
    :try_start_2
    invoke-virtual {v7, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v5

    const-string/jumbo v8, "JP"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v8

    const-string/jumbo v9, "JP"

    invoke-virtual {v7, v9}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v9

    if-ne v8, v9, :cond_8

    invoke-virtual {v5}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v8

    sget-object v9, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v8, v9, :cond_8

    sget-object v8, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->NATIONAL:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v7, v5, v8}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_8
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "formatNumber - ISO: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", NetworkIso: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v7, v5, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->formatInOriginalFormat(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-nez v7, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_2

    :try_start_0
    const-string/jumbo v7, "ZZ"

    invoke-virtual {v6, p1, v7}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-gtz v7, :cond_2

    move-object p2, v4

    :cond_2
    :goto_1
    invoke-static {p0, p2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    :goto_2
    return-object v5

    :cond_3
    move-object v5, p0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    move v0, p1

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    sparse-switch v0, :sswitch_data_0

    return-void

    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v5, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-ne v1, v2, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "SKT"

    aput-object v2, v1, v6

    const-string/jumbo v2, "KTT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "LGT"

    aput-object v2, v1, v4

    const-string/jumbo v2, "KOO"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-lt v1, v5, :cond_3

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_3

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x32

    if-ne v1, v2, :cond_3

    const/16 v0, 0x52

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    return-void

    :sswitch_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    return-void

    :sswitch_2
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "SKT"

    aput-object v2, v1, v6

    const-string/jumbo v2, "KTT"

    aput-object v2, v1, v3

    const-string/jumbo v2, "LGT"

    aput-object v2, v1, v4

    const-string/jumbo v2, "KOO"

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->formatKRnpNumber(Landroid/text/Editable;)V

    :cond_4
    return-void

    :sswitch_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method private static formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->isValidNumber(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v1, p2}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method public static formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNumberToRFC3966(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumberInternal(Ljava/lang/String;Ljava/lang/String;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentIdp(Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "011"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "gsm.operator.idpstring"

    const-string/jumbo v2, "+"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentOtaCountryIdd(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assisted_dialing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    :goto_0
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getCurrentOtaCountryNanp(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const-string/jumbo v2, ""

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "assisted_dialing"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    :goto_0
    invoke-static {p0, v3}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v2

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private static getDefaultVoiceSubId()I
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    return v0
.end method

.method public static getEmergencyServiceCategory(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmergencyServiceCategory(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 24

    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v15

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "SKT"

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const-string/jumbo v20, "KTT"

    const/16 v21, 0x1

    aput-object v20, v19, v21

    const-string/jumbo v20, "LGT"

    const/16 v21, 0x2

    aput-object v20, v19, v21

    const-string/jumbo v20, "KOO"

    const/16 v21, 0x3

    aput-object v20, v19, v21

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-static/range {p0 .. p1}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategoryforkor(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_1

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x2f

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v19, 0x0

    return-object v19

    :cond_2
    const-string/jumbo v19, "KDI"

    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    const-string/jumbo v19, "184"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_3

    const-string/jumbo v19, "186"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    :cond_3
    const/16 v19, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v19, "110"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string/jumbo v19, "118"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_4

    const-string/jumbo v19, "119"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    :cond_4
    const-string/jumbo v19, "jp"

    const-string/jumbo v20, "gsm.operator.iso-country"

    invoke-static/range {v20 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_5

    move-object/from16 p1, v18

    :cond_5
    const-string/jumbo v13, ""

    if-lez v15, :cond_c

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getEmergencyServiceCategory - phoneId: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v16

    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel(I)Z

    move-result v19

    if-eqz v19, :cond_f

    const/4 v10, 0x0

    :goto_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ril.ecclist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_d

    const-string/jumbo v19, "ro.ril.ecclist"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_6

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_6
    :goto_2
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ril.ecclist_net"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_7
    const-string/jumbo v19, "persist.radio.test_emer_num"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_8

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_8
    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel(I)Z

    move-result v19

    if-nez v19, :cond_9

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v20, "VZW"

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const-string/jumbo v20, "SPR"

    const/16 v21, 0x1

    aput-object v20, v19, v21

    const-string/jumbo v20, "USC"

    const/16 v21, 0x2

    aput-object v20, v19, v21

    move-object/from16 v0, v19

    invoke-static {v15, v0}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_a

    :cond_9
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ril.ecclist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_a

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_a
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ECC List: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1f

    const-string/jumbo v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v20

    const/16 v19, 0x0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1e

    aget-object v9, v20, v19

    const-string/jumbo v22, "/"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v22, 0x0

    aget-object v3, v17, v22

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_15

    const/16 v22, 0x1

    aget-object v2, v17, v22

    :goto_4
    if-nez p2, :cond_b

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    move-object/from16 p1, v3

    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v19, "gsm.operator.numeric"

    const-string/jumbo v20, "00000"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v15, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "getEmergencyServiceCategory - opNumeric: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    const-string/jumbo v19, "46605"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_18

    const-string/jumbo v19, "119"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_16

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_e

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_f
    invoke-static {v15}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v19

    if-eqz v19, :cond_12

    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_12

    const-string/jumbo v19, "ro.ril.ecclist"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ":: ecclist for UIM"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " :: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_10

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_10
    const-string/jumbo v19, "110"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const-string/jumbo v19, "112"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const-string/jumbo v19, "119"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const-string/jumbo v19, "120"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const-string/jumbo v19, "911"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const-string/jumbo v19, "999"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const-string/jumbo v19, "122"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const-string/jumbo v19, "000"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const-string/jumbo v19, "118"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_11

    const-string/jumbo v19, "08"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    :cond_11
    const-string/jumbo v19, ""

    return-object v19

    :cond_12
    const/16 v19, 0x2

    move/from16 v0, v16

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    const-string/jumbo v19, "ro.ril.ecclist"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_2

    :cond_13
    const/4 v10, 0x0

    :goto_6
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "ril.ecclist"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_6

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_14

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ","

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_14
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_7

    :cond_15
    const-string/jumbo v2, ""

    goto/16 :goto_4

    :cond_16
    const-string/jumbo v19, "110"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_17

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_17
    const-string/jumbo v19, "112"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_18
    const-string/jumbo v19, "46011"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const-string/jumbo v19, "110"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_19

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_19
    const-string/jumbo v19, "119"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1a

    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_1a
    const-string/jumbo v19, "120"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1b

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_1b
    const-string/jumbo v19, "122"

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1c

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    return-object v19

    :cond_1c
    return-object v2

    :cond_1d
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_3

    :cond_1e
    const/16 v19, 0x0

    return-object v19

    :cond_1f
    const-string/jumbo v19, "112"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_20

    const-string/jumbo v19, "911"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_21

    :cond_20
    const-string/jumbo v19, ""

    return-object v19

    :cond_21
    const/16 v19, 0x0

    return-object v19
.end method

.method public static getEmergencyServiceCategory(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmergencyServiceCategoryforkor(ILjava/lang/String;)Ljava/lang/String;
    .locals 32

    invoke-static/range {p0 .. p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v23

    const/16 v26, 0x4

    move/from16 v0, v26

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "112"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "1"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x0

    aput-object v26, v21, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "911"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "4"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x1

    aput-object v26, v21, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "119"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "4"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x2

    aput-object v26, v21, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "122"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "8"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x3

    aput-object v26, v21, v27

    const/16 v26, 0x9

    move/from16 v0, v26

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "112"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "1"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x0

    aput-object v26, v16, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "911"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "4"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x1

    aput-object v26, v16, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "118"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "19"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x2

    aput-object v26, v16, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "119"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "4"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x3

    aput-object v26, v16, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "122"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "8"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x4

    aput-object v26, v16, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "113"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "3"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x5

    aput-object v26, v16, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "125"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "9"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x6

    aput-object v26, v16, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "111"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "7"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x7

    aput-object v26, v16, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "117"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "18"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x8

    aput-object v26, v16, v27

    const/16 v26, 0x5

    move/from16 v0, v26

    new-array v0, v0, [[Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "000"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "4"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x0

    aput-object v26, v22, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "08"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "4"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x1

    aput-object v26, v22, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "110"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "4"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x2

    aput-object v26, v22, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "999"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "4"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x3

    aput-object v26, v22, v27

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "118"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "4"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const/16 v27, 0x4

    aput-object v26, v22, v27

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "ril.ecclist_net"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez p1, :cond_0

    const/16 v26, 0x0

    return-object v26

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v19, ""

    const-string/jumbo v17, "000"

    const-string/jumbo v26, "gsm.operator.numeric"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v26

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    const-string/jumbo v26, "PhoneNumberUtils"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "numeric = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x0

    const/16 v27, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    :cond_1
    const-string/jumbo v26, "ABSENT"

    const-string/jumbo v27, "gsm.sim.state"

    const-string/jumbo v28, "UNKNOWN"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_2

    const/4 v14, 0x0

    :goto_0
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "ril.ecclist"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v26

    if-nez v26, :cond_4

    :cond_2
    const-string/jumbo v26, "ril.airplane.mode"

    const-string/jumbo v27, "0"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v26, "1"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    const-string/jumbo v26, "000"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    :cond_3
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "LGT"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    move/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_6

    move-object/from16 v4, v21

    :goto_1
    const/16 v26, 0x0

    array-length v0, v4

    move/from16 v27, v0

    :goto_2
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_9

    aget-object v12, v4, v26

    const/16 v28, 0x0

    aget-object v28, v12, v28

    const/16 v29, 0x1

    aget-object v29, v12, v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v26, v26, 0x1

    goto :goto_2

    :cond_4
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_5

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto :goto_3

    :cond_6
    const-string/jumbo v26, "450"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    const-string/jumbo v26, "000"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_7

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "KTT"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    move/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_8

    :cond_7
    move-object/from16 v4, v16

    goto/16 :goto_1

    :cond_8
    move-object/from16 v4, v21

    goto/16 :goto_1

    :cond_9
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "SKT"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    const-string/jumbo v27, "KTT"

    const/16 v28, 0x1

    aput-object v27, v26, v28

    const-string/jumbo v27, "KOO"

    const/16 v28, 0x2

    aput-object v27, v26, v28

    move/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_f

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_e

    const-string/jumbo v26, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    aget-object v11, v27, v26

    const-string/jumbo v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v29, 0x0

    aget-object v8, v25, v29

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_b

    const/16 v29, 0x1

    aget-object v7, v25, v29

    :goto_5
    const/16 v29, 0x2

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v29, v0

    const-string/jumbo v30, "SKT"

    const/16 v31, 0x0

    aput-object v30, v29, v31

    const-string/jumbo v30, "KOO"

    const/16 v31, 0x1

    aput-object v30, v29, v31

    move/from16 v0, v23

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_d

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_a

    const-string/jumbo v29, "0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_a

    invoke-interface {v13, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    :cond_b
    const-string/jumbo v7, ""

    goto :goto_5

    :cond_c
    invoke-interface {v13, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_d
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    if-nez v29, :cond_a

    invoke-interface {v13, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_e
    const-string/jumbo v26, "450"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_17

    const-string/jumbo v26, "000"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_17

    const/16 v26, 0x0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    :goto_7
    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_17

    aget-object v12, v22, v26

    const/16 v28, 0x0

    aget-object v28, v12, v28

    const/16 v29, 0x1

    aget-object v29, v12, v29

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v26, v26, 0x1

    goto :goto_7

    :cond_f
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v26, v0

    const-string/jumbo v27, "LGT"

    const/16 v28, 0x0

    aput-object v27, v26, v28

    move/from16 v0, v23

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific(I[Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_17

    const-string/jumbo v26, "450"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_17

    const-string/jumbo v26, "000"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_17

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_13

    const-string/jumbo v26, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    :goto_8
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_13

    aget-object v11, v27, v26

    const-string/jumbo v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v29, 0x0

    aget-object v8, v25, v29

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_11

    const/16 v29, 0x1

    aget-object v7, v25, v29

    :goto_9
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_10

    const-string/jumbo v29, "0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_10

    invoke-interface {v13, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    :goto_a
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    :cond_11
    const-string/jumbo v7, ""

    goto :goto_9

    :cond_12
    invoke-interface {v13, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_13
    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_17

    const-string/jumbo v26, ","

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    const/16 v26, 0x0

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v28, v0

    :goto_b
    move/from16 v0, v26

    move/from16 v1, v28

    if-ge v0, v1, :cond_17

    aget-object v11, v27, v26

    const-string/jumbo v29, "/"

    move-object/from16 v0, v29

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    const/16 v29, 0x0

    aget-object v8, v25, v29

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_15

    const/16 v29, 0x1

    aget-object v7, v25, v29

    :goto_c
    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    if-eqz v29, :cond_16

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v29

    if-lez v29, :cond_14

    const-string/jumbo v29, "0"

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    xor-int/lit8 v29, v29, 0x1

    if-eqz v29, :cond_14

    invoke-interface {v13, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    :goto_d
    add-int/lit8 v26, v26, 0x1

    goto :goto_b

    :cond_15
    const-string/jumbo v7, ""

    goto :goto_c

    :cond_16
    invoke-interface {v13, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_17
    const-string/jumbo v26, "127"

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_18

    const-string/jumbo v26, "127"

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const-string/jumbo v26, "119"

    move-object/from16 v0, v26

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    if-eqz v26, :cond_19

    const-string/jumbo v26, "ril.skt119Cat"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v26

    if-lez v26, :cond_19

    const-string/jumbo v26, "119"

    move-object/from16 v0, v26

    invoke-interface {v13, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string/jumbo v26, "PhoneNumberUtils"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "finalEccList: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->mapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v24, ""

    invoke-interface {v13, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    if-eqz v24, :cond_1a

    return-object v24

    :cond_1a
    const-string/jumbo v26, "450"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1d

    const-string/jumbo v26, "000"

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_1d

    const-string/jumbo v26, "ABSENT"

    const-string/jumbo v27, "gsm.sim.state"

    const-string/jumbo v28, "UNKNOWN"

    invoke-static/range {v27 .. v28}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    const-string/jumbo v26, "000"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1b

    const-string/jumbo v26, "08"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1b

    const-string/jumbo v26, "110"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1b

    const-string/jumbo v26, "999"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1b

    const-string/jumbo v26, "119"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1b

    const-string/jumbo v26, "118"

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1c

    :cond_1b
    const/16 v26, 0x4

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    return-object v26

    :cond_1c
    const/16 v26, 0x0

    return-object v26

    :cond_1d
    const/16 v26, 0x0

    return-object v26
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "SKT"

    aput-object v3, v2, v5

    const-string/jumbo v3, "KTT"

    aput-object v3, v2, v6

    const-string/jumbo v3, "LGT"

    aput-object v3, v2, v7

    const-string/jumbo v3, "KOO"

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "KR"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x52

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    return v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    return v7

    :cond_3
    return v5
.end method

.method public static getLTNContactsMatchLength(Landroid/content/Context;)I
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    if-eq v4, v8, :cond_0

    if-nez v4, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sparse-switch v2, :sswitch_data_0

    const/4 v1, 0x7

    :goto_0
    return v1

    :cond_2
    return v1

    :sswitch_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const/16 v1, 0x8

    goto :goto_0

    :sswitch_2
    const/16 v1, 0x9

    goto :goto_0

    :sswitch_3
    const/16 v1, 0xa

    goto :goto_0

    :sswitch_4
    const/16 v1, 0xb

    goto :goto_0

    :sswitch_5
    if-ne v3, v8, :cond_3

    const/16 v1, 0x8

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_6
    if-eq v3, v8, :cond_4

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    :cond_4
    const/4 v1, 0x7

    goto :goto_0

    :cond_5
    if-eq v3, v6, :cond_4

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_7
    const/16 v5, 0x32

    if-eq v3, v5, :cond_6

    if-ne v3, v9, :cond_7

    :cond_6
    const/4 v1, 0x7

    goto :goto_0

    :cond_7
    const/16 v5, 0x1e

    if-eq v3, v5, :cond_6

    if-eq v3, v6, :cond_6

    const/16 v5, 0x9

    if-eq v3, v5, :cond_6

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_8
    if-ne v3, v9, :cond_8

    const/16 v1, 0x8

    goto :goto_0

    :cond_8
    const/4 v5, 0x4

    if-ne v3, v5, :cond_9

    const/16 v1, 0x9

    goto :goto_0

    :cond_9
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xd6 -> :sswitch_0
        0x14a -> :sswitch_3
        0x14e -> :sswitch_7
        0x152 -> :sswitch_0
        0x16b -> :sswitch_0
        0x170 -> :sswitch_1
        0x172 -> :sswitch_3
        0x176 -> :sswitch_0
        0x1c6 -> :sswitch_1
        0x1c7 -> :sswitch_2
        0x1cc -> :sswitch_4
        0x1d2 -> :sswitch_2
        0x2c0 -> :sswitch_1
        0x2c2 -> :sswitch_1
        0x2c4 -> :sswitch_0
        0x2c6 -> :sswitch_1
        0x2c8 -> :sswitch_1
        0x2ca -> :sswitch_0
        0x2cc -> :sswitch_0
        0x2d2 -> :sswitch_0
        0x2d4 -> :sswitch_1
        0x2da -> :sswitch_1
        0x2dc -> :sswitch_3
        0x2de -> :sswitch_6
        0x2e0 -> :sswitch_1
        0x2e4 -> :sswitch_1
        0x2e8 -> :sswitch_8
        0x2ec -> :sswitch_5
    .end sparse-switch
.end method

.method public static getMinMatch()I
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x7

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_CallerIdMatchingDigit"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 13

    const/4 v2, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v0, "tel"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "sip"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    if-nez p1, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0, p1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v10, "number"

    :cond_4
    :goto_0
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :cond_5
    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_1
    return-object v9

    :cond_7
    const-string/jumbo v0, "com.android.contacts"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v10, "data1"

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "PhoneNumberUtils"

    const-string/jumbo v2, "Error getting phone number."

    invoke-static {v0, v2, v8}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_8

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method private static getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;
    .locals 9

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v1, "otaCountryMccKey"

    invoke-interface {v7, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez v8, :cond_1

    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->OTA_COUNTRY_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :goto_0
    return-object v6

    :cond_1
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    const-string/jumbo v3, "mcc=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v8, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    goto :goto_0
.end method

.method public static getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUsernameFromUriNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    const-string/jumbo v1, "%40"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    const-string/jumbo v1, "PhoneNumberUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUsernameFromUriNumber: no delimiter found in SIP addr \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :cond_1
    invoke-virtual {p0, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    if-gez v2, :cond_0

    add-int/lit8 v4, v0, -0x1

    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    return v4
.end method

.method private static internalCalledPartyBCDFragmentToString(Ljava/lang/StringBuilder;[BII)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    move v2, p2

    :goto_0
    add-int v3, p3, p2

    if-ge v2, v3, :cond_2

    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "SKT"

    aput-object v4, v3, v5

    const-string/jumbo v4, "KTT"

    aput-object v4, v3, v6

    const-string/jumbo v4, "LGT"

    aput-object v4, v3, v7

    const-string/jumbo v4, "KOO"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->KorMsgbcdToChar(B)C

    move-result v1

    :goto_1
    if-nez v1, :cond_1

    return-void

    :cond_0
    aget-byte v3, p1, v2

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p1, v2

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v0, v3

    const/16 v3, 0xf

    if-ne v0, v3, :cond_3

    add-int/lit8 v3, v2, 0x1

    add-int v4, p3, p2

    if-ne v3, v4, :cond_3

    :cond_2
    return-void

    :cond_3
    new-array v3, v9, [Ljava/lang/String;

    const-string/jumbo v4, "SKT"

    aput-object v4, v3, v5

    const-string/jumbo v4, "KTT"

    aput-object v4, v3, v6

    const-string/jumbo v4, "LGT"

    aput-object v4, v3, v7

    const-string/jumbo v4, "KOO"

    aput-object v4, v3, v8

    invoke-static {v3}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->KorMsgbcdToChar(B)C

    move-result v1

    :goto_2
    if-nez v1, :cond_5

    return-void

    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->bcdToChar(B)C

    move-result v1

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    move v4, v2

    :goto_0
    if-ltz v1, :cond_1

    sub-int v5, v2, v1

    if-gt v5, p1, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static final is12Key(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConvertToEmergencyNumberEnabled()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->CONVERT_TO_EMERGENCY_MAP:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isCountryCallingCode(I)Z
    .locals 2

    const/4 v0, 0x0

    if-lez p0, :cond_0

    sget v1, Landroid/telephony/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v1, :cond_0

    sget-object v0, Landroid/telephony/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    :cond_0
    return v0
.end method

.method public static final isDialable(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x4e

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static isEmergencyNumber(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", defaultCountryIso: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    const-string/jumbo v1, "BR"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p3, 0x1

    :cond_2
    invoke-static {p0, p1, p3}, Landroid/telephony/PhoneNumberUtils;->getEmergencyServiceCategory(ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return v3

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isEmergencyNumberInternal cat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method private static isEmergencyNumberInternal(ILjava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isEmergencyNumberInternal(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGlobalPhoneNumber(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->GLOBAL_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isISODigit(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v1, 0x39

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isInternationalNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    const-string/jumbo v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "*"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    return v3

    :cond_2
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, p0, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-virtual {v2, p1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getCountryCodeForRegion(Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eq v4, v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3

    :catch_0
    move-exception v0

    return v3
.end method

.method public static isLTNSpecialNumber(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v4

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_3

    return v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    return v3
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z
    .locals 7

    const-string/jumbo v4, "country_detector"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/CountryDetector;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, v0, p3}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    return v4

    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v3, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "PhoneNumberUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No CountryDetector; falling back to countryIso based on locale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isLocalEmergencyNumberInternal(Ljava/lang/String;Landroid/content/Context;Z)Z
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isNanp(Ljava/lang/String;)Z
    .locals 5

    const/16 v4, 0xa

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isTwoToNine(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v4, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_1
    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "isNanp: null dialStr passed in"

    invoke-static {v3, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isNanpCountry(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public static final isNonSeparator(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x4e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSeparator(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private static isOneNanp(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v2, "isOneNanp: null dialStr passed in"

    invoke-static {v2, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPause(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x70

    if-eq p0, v1, :cond_0

    const/16 v1, 0x50

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumberInternal(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialEmergencyNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialEmergencyNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, p0, v0}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumberInternal(ILjava/lang/String;Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getDefaultVoiceSubId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static final isReallyDialable(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0x61

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7a

    if-le p0, v2, :cond_2

    :cond_0
    const/16 v2, 0x41

    if-gt v2, p0, :cond_1

    const/16 v2, 0x5a

    if-le p0, v2, :cond_3

    :cond_1
    :goto_0
    move v1, v0

    :cond_2
    return v1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3b

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isToneWait(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x77

    if-eq p0, v1, :cond_0

    const/16 v1, 0x57

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTwoToNine(C)Z
    .locals 1

    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isUriNumber(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string/jumbo v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "%40"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVoiceMailNumber(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isVoiceMailNumber(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 12

    const/4 v8, 0x1

    const/4 v11, 0x0

    if-nez p0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    :goto_0
    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    const-string/jumbo v9, "VZW"

    invoke-static {v5}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "*86"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    return v8

    :cond_0
    :try_start_1
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v3

    return v11

    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    return v11

    :cond_2
    const/4 v1, 0x0

    if-eqz p0, :cond_3

    const-string/jumbo v9, "carrier_config"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string/jumbo v9, "mdn_is_additional_voicemail_number_bool"

    invoke-virtual {v0, v9}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_5

    invoke-static {p2, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {p2, v4}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    :cond_4
    return v8

    :cond_5
    invoke-static {p2, v7}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    return v8
.end method

.method public static isVoiceMailNumber(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->isVoiceMailNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "PhoneNumberUtils"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static mapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static maskPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "<MASKED>"

    return-object v0

    :cond_0
    return-object p0
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8

    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v6, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :pswitch_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    if-ne v0, v7, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :pswitch_3
    if-ne v0, v7, :cond_5

    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_6
    if-eq v2, v3, :cond_7

    const/4 v5, 0x3

    if-ne v2, v5, :cond_8

    :cond_7
    :goto_2
    return v3

    :cond_8
    const/4 v5, 0x5

    if-eq v2, v5, :cond_7

    move v3, v4

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 8

    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v2, :pswitch_data_0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :pswitch_0
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v6, :cond_2

    const/4 v2, 0x2

    goto :goto_1

    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :pswitch_1
    if-ne v0, v6, :cond_3

    const/4 v2, 0x3

    goto :goto_1

    :cond_3
    if-ne v0, v7, :cond_4

    const/4 v2, 0x4

    goto :goto_1

    :cond_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :pswitch_2
    if-ne v0, v7, :cond_5

    const/4 v2, 0x5

    goto :goto_1

    :cond_5
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :pswitch_3
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v2, 0x6

    goto :goto_1

    :cond_6
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :pswitch_4
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v5

    if-eqz v5, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_8
    const/4 v5, 0x6

    if-eq v2, v5, :cond_9

    const/4 v5, 0x7

    if-ne v2, v5, :cond_a

    :cond_9
    :goto_2
    return v3

    :cond_a
    const/16 v5, 0x8

    if-eq v2, v5, :cond_9

    move v3, v4

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    xor-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_2
    return v1
.end method

.method private static minPositive(II)I
    .locals 1

    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-ge p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    if-ltz p0, :cond_2

    return p0

    :cond_2
    if-ltz p1, :cond_3

    return p1

    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static networkPortionToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v1

    return-object v1
.end method

.method public static normalizeNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, ""

    return-object v5

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x2b

    if-ne v0, v5, :cond_4

    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v5, 0x2a

    if-eq v0, v5, :cond_3

    const/16 v5, 0x23

    if-eq v0, v5, :cond_3

    const/16 v5, 0x61

    if-lt v0, v5, :cond_5

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_5

    :goto_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_5
    const/16 v5, 0x41

    if-lt v0, v5, :cond_1

    const/16 v5, 0x5a

    if-gt v0, v5, :cond_1

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static numberToCalledPartyBCD(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B

    move-result-object v0

    return-object v0
.end method

.method private static numberToCalledPartyBCDHelper(Ljava/lang/String;Z)[B
    .locals 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    move v5, v6

    const/16 v11, 0x2b

    invoke-virtual {p0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-eqz v3, :cond_0

    add-int/lit8 v5, v6, -0x1

    :cond_0
    if-nez v5, :cond_2

    const/4 v11, 0x0

    return-object v11

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v11, v5, 0x1

    div-int/lit8 v9, v11, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    :cond_3
    add-int/2addr v9, v2

    new-array v8, v9, [B

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v6, :cond_6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v11, 0x2b

    if-ne v0, v11, :cond_4

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    and-int/lit8 v11, v1, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    const/4 v10, 0x4

    :goto_3
    shr-int/lit8 v11, v1, 0x1

    add-int/2addr v11, v2

    aget-byte v12, v8, v11

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->charToBCD(C)I

    move-result v13

    and-int/lit8 v13, v13, 0xf

    shl-int/2addr v13, v10

    int-to-byte v13, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v10, 0x0

    goto :goto_3

    :cond_6
    and-int/lit8 v11, v1, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    shr-int/lit8 v11, v1, 0x1

    add-int/2addr v11, v2

    aget-byte v12, v8, v11

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    :cond_7
    const/4 v7, 0x0

    if-eqz p1, :cond_8

    const/4 v11, 0x0

    const/4 v7, 0x1

    add-int/lit8 v12, v9, -0x1

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    :cond_8
    if-eqz v3, :cond_9

    const/16 v11, 0x91

    :goto_4
    int-to-byte v11, v11

    aput-byte v11, v8, v7

    return-object v8

    :cond_9
    const/16 v11, 0x81

    goto :goto_4
.end method

.method public static processHideCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "button_clir_key"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v5, "gsm.operator.iso-country"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_2

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_2

    const-string/jumbo v5, "jp"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "184"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v4, "186"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    :cond_0
    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "184"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PhoneNumberUtils"

    const-string/jumbo v5, "Add 184 to dialnumber"

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private static processPlusCode(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    move-object v1, p0

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    const-string/jumbo v2, "processPlusCode - Remove the leading plus sign"

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v2, "[+]"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processPlusCode - Replaces the plus sign with the default IDP (useNanp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", current IDP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static processPlusCode(Ljava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    move-object v4, p0

    if-eqz p0, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_2

    invoke-virtual {p0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x3

    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "toggle_country_name"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v0, :cond_3

    const-string/jumbo v1, ""

    const/4 v7, 0x5

    invoke-static {v7}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "gsm.operator.iso-country.real"

    const-string/jumbo v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "PhoneNumberUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ISO: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", SIM ISO: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v11, :cond_2

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_2

    invoke-static {v5}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v10, :cond_2

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "processPlusCode - Remove the leading plus sign and 1"

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v4

    :cond_3
    const-string/jumbo v7, "country_code"

    const-string/jumbo v8, "011"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "[+]"

    invoke-virtual {p0, v7, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processPlusCode - Replaces the plus sign with the NANP IDP (NANP IDP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isOneNanp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v4, v3

    const-string/jumbo v7, "processPlusCode - Remove the leading plus sign"

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "[+]"

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "processPlusCode - Replaces the plus sign with the default IDP (useNanp: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", current IDP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->getCurrentIdp(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static replaceUnicodeDigits(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_1

    aget-char v0, v4, v3

    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static retrieveAssistedParams(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    const-string/jumbo v1, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Assisted Dial not supported"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    return v10

    :cond_0
    const-string/jumbo v1, "gsm.current.phone-type"

    invoke-static {v1, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sput v1, Landroid/telephony/PhoneNumberUtils;->numberLength:I

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNetRoaming:Z

    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v11, :cond_2

    :cond_1
    const-string/jumbo v1, "Wrong MDN"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    return v10

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->REF_COUNTRY_SHARED_PREF:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_4

    const-string/jumbo v1, "Invalid Reference Country"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_3

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return v10

    :cond_4
    :try_start_1
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryName:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v1, "310 to 316"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v8, "310"

    :cond_5
    :goto_0
    sput-object v8, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryIDDPrefix:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNDDPrefix:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v1, v9

    :goto_1
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isNANPCountry:Z

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryCountryCode:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    if-nez v1, :cond_6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v11, :cond_e

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;

    :cond_6
    :goto_2
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    if-nez v1, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v11, :cond_10

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;

    :cond_7
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refCountryMCC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->refCountryMCC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_8

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    if-ne v7, v9, :cond_11

    move v1, v9

    :goto_4
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isGSMRegistered:Z

    if-ne v7, v12, :cond_12

    move v1, v9

    :goto_5
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isCDMARegistered:Z

    const/4 v1, 0x1

    :try_start_2
    invoke-static {p1, v1}, Landroid/telephony/PhoneNumberUtils;->getOtaCountry(Landroid/content/Context;Z)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_a

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryName:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryIDDPrefix:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    if-nez v1, :cond_9

    const-string/jumbo v1, ""

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryNDDPrefix:Ljava/lang/String;

    :cond_9
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NANP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move v1, v9

    :goto_6
    sput-boolean v1, Landroid/telephony/PhoneNumberUtils;->isOTANANPCountry:Z

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryCountryCode:Ljava/lang/String;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string/jumbo v2, "310 to 316"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string/jumbo v1, "310"

    :goto_7
    sput-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_a
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_b

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    if-nez v1, :cond_17

    const-string/jumbo v1, "OTA country not found"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    return v10

    :cond_c
    :try_start_3
    const-string/jumbo v1, "430 to 431"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v8, "430"

    goto/16 :goto_0

    :cond_d
    move v1, v10

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v1, "Wrong MDN. Use default reference country area code"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const-string/jumbo v1, "123"

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryAreaCode:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_f

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v1

    :cond_10
    :try_start_4
    const-string/jumbo v1, "Wrong MDN. Use default reference country national number length"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->adLog(Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->refCountryNationalNumberLength:Ljava/lang/Integer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    :cond_11
    move v1, v10

    goto/16 :goto_4

    :cond_12
    move v1, v10

    goto/16 :goto_5

    :cond_13
    move v1, v10

    goto :goto_6

    :cond_14
    :try_start_5
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;

    const-string/jumbo v2, "430 to 431"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "430"

    goto :goto_7

    :cond_15
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->otaCountryMCC:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v1

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_16

    sget-object v2, Landroid/telephony/PhoneNumberUtils;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_16
    throw v1

    :cond_17
    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->displayAssistedParams()V

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->checkAssistedDialingTestmode(Landroid/content/Context;)V

    return v9
.end method

.method public static semCompareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static semIsEmergencyNumber(ILjava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static splitAtNonNumerics(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isISODigit(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v2, " "

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " +"

    const-string/jumbo v4, " "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static startWithCountryCode(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "7"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "20"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "65"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "90"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "length 12 - 7,20,65,90 is detected"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    return v6

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0xb

    if-lt v1, v3, :cond_5

    const-string/jumbo v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "US country code is detected with more than 11 digits"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    return v6

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->MCC_OTA_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sput-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    if-eqz v1, :cond_5

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    const/4 v2, 0x6

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "contry code is detected"

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->log(Ljava/lang/String;)V

    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x1

    return v1

    :cond_3
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_4
    sget-object v1, Landroid/telephony/PhoneNumberUtils;->mCursorCountry:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return v6
.end method

.method public static stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/16 v0, 0x91

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static toCallerIDMinMatch(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/telephony/PhoneNumberUtils;->getMinMatch()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->internalGetStrippedReversed(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toaFromString(Ljava/lang/String;)I
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_0

    const/16 v0, 0x91

    return v0

    :cond_0
    const/16 v0, 0x81

    return v0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11

    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_f

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    packed-switch v5, :pswitch_data_0

    return-object v7

    :pswitch_0
    const/16 v6, 0x2b

    if-ne v1, v6, :cond_1

    const/4 v5, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-ne v1, v9, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    :cond_2
    if-ne v1, v8, :cond_4

    if-eqz p1, :cond_3

    const/16 v5, 0x8

    goto :goto_1

    :cond_3
    return-object v7

    :cond_4
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v7

    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_1

    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_1

    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v7

    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_1

    :cond_7
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v7

    :pswitch_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-lez v4, :cond_c

    mul-int/lit8 v6, v0, 0xa

    add-int v0, v6, v4

    const/16 v6, 0x64

    if-ge v0, v6, :cond_8

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v6

    :cond_9
    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    :cond_a
    const/4 v5, 0x6

    goto :goto_1

    :cond_b
    const/4 v6, 0x5

    if-eq v5, v6, :cond_a

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_c
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v7

    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_1

    :cond_d
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_0

    return-object v7

    :pswitch_5
    if-ne v1, v10, :cond_e

    new-instance v6, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    const/16 v8, 0x42

    invoke-direct {v6, v8, v7}, Landroid/telephony/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    return-object v6

    :cond_e
    return-object v7

    :cond_f
    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v3

    if-ltz v3, :cond_0

    add-int/lit8 v3, v1, 0x1

    return v3

    :cond_0
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v3

    if-eqz v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public static ttsSpanAsPhoneNumber(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ttsSpanAsPhoneNumber(Landroid/text/Spannable;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0, p1, p2}, Landroid/telephony/PhoneNumberUtils;->addTtsSpan(Landroid/text/Spannable;II)V

    return-void
.end method
