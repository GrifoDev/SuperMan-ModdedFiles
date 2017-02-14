.class public Lcom/android/launcher2/compat/UserManagerCompatV17;
.super Lcom/android/launcher2/compat/UserManagerCompatV16;
.source "UserManagerCompatV17.java"


# instance fields
.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher2/compat/UserManagerCompatV16;-><init>()V

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher2/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/compat/UserHandleCompat;->getSerialNumberForUser(Landroid/os/UserManager;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserForSerialNumber(J)Lcom/android/launcher2/compat/UserHandleCompat;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/compat/UserManagerCompatV17;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method
