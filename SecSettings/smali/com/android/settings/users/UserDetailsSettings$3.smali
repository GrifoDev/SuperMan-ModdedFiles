.class Lcom/android/settings/users/UserDetailsSettings$3;
.super Ljava/lang/Object;
.source "UserDetailsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/users/UserDetailsSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/users/UserDetailsSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/users/UserDetailsSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/users/UserDetailsSettings$3;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/users/UserDetailsSettings$3;->this$0:Lcom/android/settings/users/UserDetailsSettings;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserDetailsSettings;->enableCallsAndSms(Z)V

    return-void
.end method
