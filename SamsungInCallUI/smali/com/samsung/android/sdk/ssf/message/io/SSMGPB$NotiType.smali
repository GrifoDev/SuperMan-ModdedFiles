.class public final enum Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ssf/message/io/SSMGPB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotiType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final enum CHATROOM_DESTROYED_BY_OWNER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final CHATROOM_DESTROYED_BY_OWNER_VALUE:I = 0x14

.field public static final enum CHATROOM_MEMBER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final CHATROOM_MEMBER_VALUE:I = 0x17

.field public static final enum CHATROOM_MSG_TTL_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final CHATROOM_MSG_TTL_UPDATED_VALUE:I = 0x18

.field public static final enum CHATROOM_PROFILE_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final CHATROOM_PROFILE_UPDATED_VALUE:I = 0x16

.field public static final enum CHATROOM_TITLE_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final CHATROOM_TITLE_UPDATED_VALUE:I = 0x15

.field public static final enum DEREGISTERED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final DEREGISTERED_VALUE:I = 0x4

.field public static final enum DISABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final DISABLED_VALUE:I = 0x3

.field public static final enum ENABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final ENABLED_VALUE:I = 0x2

.field public static final enum ENTER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final ENTER_VALUE:I = 0x0

.field public static final enum EXPELLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final EXPELLED_VALUE:I = 0x7

.field public static final enum LEAVE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final LEAVE_VALUE:I = 0x1

.field public static final enum OWNER_CHANGED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final enum OWNER_CHANGED_BY_SYSTEM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final OWNER_CHANGED_BY_SYSTEM_VALUE:I = 0x6

.field public static final OWNER_CHANGED_VALUE:I = 0x5

.field public static final enum SECURE_ACCEPTED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final SECURE_ACCEPTED_VALUE:I = 0x1f

.field public static final enum SECURE_INVITED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final SECURE_INVITED_VALUE:I = 0x1e

.field public static final enum SECURE_KEY_LOST:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final SECURE_KEY_LOST_VALUE:I = 0x20

.field public static final enum SECURE_KEY_REFRESHED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

.field public static final SECURE_KEY_REFRESHED_VALUE:I = 0x21

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "ENTER"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENTER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "LEAVE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->LEAVE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "DEREGISTERED"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DEREGISTERED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "OWNER_CHANGED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "OWNER_CHANGED_BY_SYSTEM"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED_BY_SYSTEM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "EXPELLED"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->EXPELLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "CHATROOM_DESTROYED_BY_OWNER"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_DESTROYED_BY_OWNER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "CHATROOM_TITLE_UPDATED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x15

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_TITLE_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "CHATROOM_PROFILE_UPDATED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0x16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_PROFILE_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "CHATROOM_MEMBER"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0x17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_MEMBER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "CHATROOM_MSG_TTL_UPDATED"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0x18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_MSG_TTL_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "SECURE_INVITED"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0x1e

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_INVITED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "SECURE_ACCEPTED"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0x1f

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_ACCEPTED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "SECURE_KEY_LOST"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_KEY_LOST:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const-string v1, "SECURE_KEY_REFRESHED"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x21

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_KEY_REFRESHED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENTER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->LEAVE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DEREGISTERED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED_BY_SYSTEM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->EXPELLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_DESTROYED_BY_OWNER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_TITLE_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_PROFILE_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_MEMBER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_MSG_TTL_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_INVITED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_ACCEPTED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_KEY_LOST:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_KEY_REFRESHED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    new-instance v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->value:I

    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_1
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENTER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->LEAVE:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->ENABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DISABLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->DEREGISTERED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->OWNER_CHANGED_BY_SYSTEM:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->EXPELLED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_DESTROYED_BY_OWNER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_TITLE_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_b
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_PROFILE_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_c
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_MEMBER:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_d
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->CHATROOM_MSG_TTL_UPDATED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_e
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_INVITED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_f
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_ACCEPTED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_10
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_KEY_LOST:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_11
    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->SECURE_KEY_REFRESHED:Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->$VALUES:[Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/ssf/message/io/SSMGPB$NotiType;->value:I

    return v0
.end method
