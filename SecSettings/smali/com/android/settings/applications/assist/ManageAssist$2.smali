.class Lcom/android/settings/applications/assist/ManageAssist$2;
.super Landroid/os/Handler;
.source "ManageAssist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/assist/ManageAssist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/assist/ManageAssist;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/assist/ManageAssist;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/assist/ManageAssist$2;->this$0:Lcom/android/settings/applications/assist/ManageAssist;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/assist/ManageAssist$2;->this$0:Lcom/android/settings/applications/assist/ManageAssist;

    invoke-static {v0}, Lcom/android/settings/applications/assist/ManageAssist;->-wrap1(Lcom/android/settings/applications/assist/ManageAssist;)V

    return-void
.end method
