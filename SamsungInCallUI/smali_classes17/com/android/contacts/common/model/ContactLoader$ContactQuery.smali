.class Lcom/android/contacts/common/model/ContactLoader$ContactQuery;
.super Ljava/lang/Object;
.source "ContactLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/model/ContactLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContactQuery"
.end annotation


# static fields
.field public static final ACCOUNT_NAME:I = 0xf

.field public static final ACCOUNT_TYPE:I = 0x10

.field public static final ALT_DISPLAY_NAME:I = 0x4

.field public static final CARRIER_PRESENCE:I = 0x40

.field public static final CHAT_CAPABILITY:I = 0x34

.field static final COLUMNS:[Ljava/lang/String;

.field static final COLUMNS_INTERNAL:[Ljava/lang/String;

.field public static final CONTACT_ID:I = 0xd

.field public static final CONTACT_PRESENCE:I = 0x8

.field public static final CONTACT_STATUS:I = 0x9

.field public static final CONTACT_STATUS_LABEL:I = 0xc

.field public static final CONTACT_STATUS_RES_PACKAGE:I = 0xb

.field public static final CONTACT_STATUS_TIMESTAMP:I = 0xa

.field public static final CUSTOM_RINGTONE:I = 0x3c

.field public static final DATA1:I = 0x1b

.field public static final DATA10:I = 0x24

.field public static final DATA11:I = 0x25

.field public static final DATA12:I = 0x26

.field public static final DATA13:I = 0x27

.field public static final DATA14:I = 0x28

.field public static final DATA15:I = 0x29

.field public static final DATA2:I = 0x1c

.field public static final DATA3:I = 0x1d

.field public static final DATA4:I = 0x1e

.field public static final DATA5:I = 0x1f

.field public static final DATA6:I = 0x20

.field public static final DATA7:I = 0x21

.field public static final DATA8:I = 0x22

.field public static final DATA9:I = 0x23

.field public static final DATA_ID:I = 0x1a

.field public static final DATA_SET:I = 0x11

.field public static final DATA_SYNC1:I = 0x2a

.field public static final DATA_SYNC2:I = 0x2b

.field public static final DATA_SYNC3:I = 0x2c

.field public static final DATA_SYNC4:I = 0x2d

.field public static final DATA_VERSION:I = 0x2e

.field public static final DELETED:I = 0x19

.field public static final DIRTY:I = 0x12

.field public static final DISPLAY_NAME:I = 0x3

.field public static final DISPLAY_NAME_SOURCE:I = 0x1

.field public static final GROUP_SOURCE_ID:I = 0x32

.field public static final IS_PRIMARY:I = 0x2f

.field public static final IS_SUPERPRIMARY:I = 0x30

.field public static final IS_USER_PROFILE:I = 0x3d

.field public static final LAST_TIME_USED:I = 0x3f

.field public static final LOOKUP_KEY:I = 0x2

.field public static final MIMETYPE:I = 0x31

.field public static final NAME_RAW_CONTACT_ID:I = 0x0

.field public static final PHONETIC_NAME:I = 0x5

.field public static final PHOTO_ID:I = 0x6

.field public static final PHOTO_URI:I = 0x3a

.field public static final PRESENCE:I = 0x33

.field public static final RAW_CONTACT_ID:I = 0xe

.field public static final SEND_TO_VOICEMAIL:I = 0x3b

.field public static final SOURCE_ID:I = 0x14

.field public static final STARRED:I = 0x7

.field public static final STATUS:I = 0x35

.field public static final STATUS_ICON:I = 0x37

.field public static final STATUS_LABEL:I = 0x38

.field public static final STATUS_RES_PACKAGE:I = 0x36

.field public static final STATUS_TIMESTAMP:I = 0x39

.field public static final SYNC1:I = 0x15

.field public static final SYNC2:I = 0x16

.field public static final SYNC3:I = 0x17

.field public static final SYNC4:I = 0x18

.field public static final TIMES_USED:I = 0x3e

.field public static final VERSION:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 119
    const/16 v1, 0x40

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "name_raw_contact_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "display_name_source"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "lookup"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "display_name"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "display_name_alt"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "phonetic_name"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "photo_id"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "starred"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "contact_presence"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "contact_status"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "contact_status_ts"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "contact_status_res_package"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "contact_status_label"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "contact_id"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "raw_contact_id"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "account_name"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "account_type"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "data_set"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "dirty"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "version"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "sourceid"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "sync1"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "sync2"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "sync3"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "sync4"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "deleted"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "data_id"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "data1"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "data2"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "data3"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "data4"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "data5"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "data6"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "data7"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "data8"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "data9"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "data10"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "data11"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "data12"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "data13"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "data14"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "data15"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "data_sync1"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "data_sync2"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "data_sync3"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "data_sync4"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "data_version"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "is_primary"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "is_super_primary"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "mimetype"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "group_sourceid"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "mode"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "chat_capability"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "status_res_package"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "status_icon"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "status_label"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "status_ts"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "photo_uri"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "send_to_voicemail"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "custom_ringtone"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "is_user_profile"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "times_used"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "last_time_used"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS_INTERNAL:[Ljava/lang/String;

    .line 195
    sget-object v1, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS_INTERNAL:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    .line 196
    .local v0, "projectionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMarshmallowCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const-string v1, "carrier_presence"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    sput-object v1, Lcom/android/contacts/common/model/ContactLoader$ContactQuery;->COLUMNS:[Ljava/lang/String;

    .line 200
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
