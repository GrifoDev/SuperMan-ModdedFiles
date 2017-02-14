.class public Lcom/android/launcher2/compat/UserHandleCompat;
.super Ljava/lang/Object;
.source "UserHandleCompat.java"


# instance fields
.field private mUser:Landroid/os/UserHandle;

.field private mUserSerialNumber:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUserSerialNumber:J

    return-void
.end method

.method private constructor <init>(Landroid/os/UserHandle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUserSerialNumber:J

    iput-object p1, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    return-void
.end method

.method public static fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-direct {v0, p0}, Lcom/android/launcher2/compat/UserHandleCompat;-><init>(Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method public static myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher2/compat/UserHandleCompat;-><init>(Landroid/os/UserHandle;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-direct {v0}, Lcom/android/launcher2/compat/UserHandleCompat;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_2

    instance-of v0, p1, Lcom/android/launcher2/compat/UserHandleCompat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    check-cast p1, Lcom/android/launcher2/compat/UserHandleCompat;

    iget-object v1, p1, Lcom/android/launcher2/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Landroid/os/UserHandle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    check-cast p1, Landroid/os/UserHandle;

    invoke-virtual {v0, p1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSerialNumberForUser(Landroid/os/UserManager;)J
    .locals 4

    iget-wide v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUserSerialNumber:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUserSerialNumber:J

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUserSerialNumber:J

    return-wide v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/compat/UserHandleCompat;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
