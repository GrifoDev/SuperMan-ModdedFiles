.class public Landroid/sec/enterprise/email/EnterpriseLDAPAccount;
.super Ljava/lang/Object;
.source "EnterpriseLDAPAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/email/EnterpriseLDAPAccount$1;
    }
.end annotation


# static fields
.field public static final ACTION_CREATE_LDAP_ACCOUNT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.CREATE_LDAPACCOUNT_INTERNAL"

.field public static final ACTION_LDAP_CREATE_ACCOUNT_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.action.LDAP_CREATE_ACCT_RESULT_INTERNAL"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/enterprise/email/EnterpriseLDAPAccount;",
            ">;"
        }
    .end annotation
.end field

.field public static final ERROR_LDAP_ALREADY_EXISTS:I = -0x1

.field public static final ERROR_LDAP_CONNECTION:I = -0x7

.field public static final ERROR_LDAP_DOES_NOT_EXIST:I = -0x2

.field public static final ERROR_LDAP_INVALID_CREDENTIALS:I = -0x3

.field public static final ERROR_LDAP_NONE:I = 0x0

.field public static final ERROR_LDAP_SERVER_BUSY:I = -0x4

.field public static final ERROR_LDAP_SERVER_DOWN:I = -0x5

.field public static final ERROR_LDAP_TIMEOUT:I = -0x6

.field public static final ERROR_LDAP_UNKNOWN:I = -0x8

.field public static final EXTRA_BASE_DN_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.BASE_DN_INTERNAL"

.field public static final EXTRA_HOST_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.HOST_INTERNAL"

.field public static final EXTRA_IS_ANONYMOUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.IS_ANONYMOUS_INTERNAL"

.field public static final EXTRA_IS_SSL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.IS_SSL_INTERNAL"

.field public static final EXTRA_LDAP_ACCOUNT_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_ACCT_ID"

.field public static final EXTRA_LDAP_RESULT:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_RESULT"

.field public static final EXTRA_LDAP_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.LDAP_USER_ID"

.field public static final EXTRA_PORT_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PORT_INTERNAL"

.field public static final EXTRA_SERVICE_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.SERVICE_INTERNAL"

.field public static final EXTRA_TRUST_ALL_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.TRUST_ALL_INTERNAL"

.field public static final EXTRA_USER_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID_INTERNAL"

.field public static final EXTRA_USER_NAME_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_NAME_INTERNAL"

.field public static final EXTRA_USER_PASSWORD_ID_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_PASSWORD_ID_INTERNAL"


# instance fields
.field public mBaseDN:Ljava/lang/String;

.field public mHost:Ljava/lang/String;

.field public mId:J

.field public mIsAnonymous:Z

.field public mPassword:Ljava/lang/String;

.field public mPort:I

.field public mTrustAll:I

.field public mUseSSL:Z

.field public mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount$1;

    invoke-direct {v0}, Landroid/sec/enterprise/email/EnterpriseLDAPAccount$1;-><init>()V

    sput-object v0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-direct {p0, p1}, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->readFromParcel(Landroid/os/Parcel;)V

    .line 114
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    .line 134
    return-void

    :cond_0
    move v0, v2

    .line 140
    goto :goto_0

    :cond_1
    move v1, v2

    .line 141
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    iget-wide v4, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 126
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mUseSSL:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mIsAnonymous:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mBaseDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseLDAPAccount;->mTrustAll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 128
    goto :goto_0

    :cond_1
    move v1, v2

    .line 129
    goto :goto_1
.end method
