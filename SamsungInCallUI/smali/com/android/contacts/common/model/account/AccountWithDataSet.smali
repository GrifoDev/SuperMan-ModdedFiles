.class public Lcom/android/contacts/common/model/account/AccountWithDataSet;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/common/model/account/AccountWithDataSet;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final g:[Ljava/lang/String;

.field private static final h:Landroid/net/Uri;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field private final f:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "\u0001"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->d:Ljava/util/regex/Pattern;

    const-string v0, "\u0002"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->e:Ljava/util/regex/Pattern;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->g:[Ljava/lang/String;

    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "limit"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->h:Landroid/net/Uri;

    new-instance v0, Lcom/android/contacts/common/model/account/AccountWithDataSet$1;

    invoke-direct {v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet$1;-><init>()V

    sput-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->f:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-static {p2, p3}, Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->f:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .locals 6

    const/4 v2, 0x3

    const/4 v5, 0x2

    sget-object v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    aget-object v4, v0, v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    aget-object v0, v0, v5

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "\u0001"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "\u0001"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    return-object p0
.end method

.method private static final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public a()Landroid/accounts/Account;
    .locals 3

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 7

    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    const-string v0, "account_type = ? AND account_name = ?"

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v3, "account_type = ? AND account_name = ? AND data_set IS NULL"

    new-array v4, v2, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    aput-object v0, v4, v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->h:Landroid/net/Uri;

    sget-object v2, Lcom/android/contacts/common/model/account/AccountWithDataSet;->g:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_1

    move v0, v6

    :goto_1
    return v0

    :cond_0
    const-string v3, "account_type = ? AND account_name = ? AND data_set = ?"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    aput-object v0, v4, v2

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public b()Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->f:Lcom/android/contacts/common/model/account/AccountTypeWithDataSet;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, p0}, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a(Ljava/lang/StringBuilder;Lcom/android/contacts/common/model/account/AccountWithDataSet;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/a/a/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountWithDataSet {name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dataSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
