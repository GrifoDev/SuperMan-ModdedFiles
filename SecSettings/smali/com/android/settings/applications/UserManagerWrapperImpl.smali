.class public Lcom/android/settings/applications/UserManagerWrapperImpl;
.super Ljava/lang/Object;
.source "UserManagerWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/applications/UserManagerWrapper;


# instance fields
.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/UserManagerWrapperImpl;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getPrimaryUser()Landroid/content/pm/UserInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/UserManagerWrapperImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/UserManagerWrapperImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
