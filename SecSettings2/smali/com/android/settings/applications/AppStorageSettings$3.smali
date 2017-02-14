.class Lcom/android/settings/applications/AppStorageSettings$3;
.super Ljava/lang/Object;
.source "AppStorageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/AppStorageSettings;->createDialog(II)Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppStorageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppStorageSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStorageSettings;->-wrap2(Lcom/android/settings/applications/AppStorageSettings;Z)V

    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSettings$3;->this$0:Lcom/android/settings/applications/AppStorageSettings;

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/applications/AppStorageSettings;->setIntentAndFinish(ZZ)V

    return-void
.end method
