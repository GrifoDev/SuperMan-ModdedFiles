.class public Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;
.super Ljava/lang/Object;
.source "ManageAssist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/ManageAssist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrefControllerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/assist/ManageAssist;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/assist/ManageAssist;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;->this$0:Lcom/android/settings/applications/assist/ManageAssist;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshPreferences()V
    .locals 2

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;->this$0:Lcom/android/settings/applications/assist/ManageAssist;

    iget-object v1, v1, Lcom/android/settings/applications/assist/ManageAssist;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/assist/ManageAssist$PrefControllerCallback;->this$0:Lcom/android/settings/applications/assist/ManageAssist;

    iget-object v1, v1, Lcom/android/settings/applications/assist/ManageAssist;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
