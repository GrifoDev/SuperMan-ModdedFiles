.class Lcom/android/settings/users/RestrictedProfileSettings$2;
.super Ljava/lang/Object;
.source "RestrictedProfileSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/RestrictedProfileSettings;->removeUser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/RestrictedProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/RestrictedProfileSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    iget-object v0, v0, Lcom/android/settings/users/RestrictedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    iget-object v1, v1, Lcom/android/settings/users/RestrictedProfileSettings;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    iget-object v0, p0, Lcom/android/settings/users/RestrictedProfileSettings$2;->this$0:Lcom/android/settings/users/RestrictedProfileSettings;

    invoke-virtual {v0}, Lcom/android/settings/users/RestrictedProfileSettings;->finishFragment()V

    return-void
.end method
