.class Lcom/android/settings/accounts/AccountSettings$2;
.super Ljava/lang/Object;
.source "AccountSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountSettings;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountSettings;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountSettings;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    iput p2, p0, Lcom/android/settings/accounts/AccountSettings$2;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSettings$2;->this$0:Lcom/android/settings/accounts/AccountSettings;

    invoke-static {v0}, Lcom/android/settings/accounts/AccountSettings;->-get0(Lcom/android/settings/accounts/AccountSettings;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/accounts/AccountSettings$2;->val$userId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z

    return-void
.end method
