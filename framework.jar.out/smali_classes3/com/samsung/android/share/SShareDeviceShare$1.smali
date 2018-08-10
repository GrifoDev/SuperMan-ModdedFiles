.class Lcom/samsung/android/share/SShareDeviceShare$1;
.super Ljava/lang/Object;
.source "SShareDeviceShare.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/share/SShareDeviceShare;->setDeviceShareView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/share/SShareDeviceShare;


# direct methods
.method constructor <init>(Lcom/samsung/android/share/SShareDeviceShare;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/SShareDeviceShare$1;->this$0:Lcom/samsung/android/share/SShareDeviceShare;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare$1;->this$0:Lcom/samsung/android/share/SShareDeviceShare;

    invoke-virtual {v0}, Lcom/samsung/android/share/SShareDeviceShare;->deviceShareItemClick()V

    iget-object v0, p0, Lcom/samsung/android/share/SShareDeviceShare$1;->this$0:Lcom/samsung/android/share/SShareDeviceShare;

    invoke-static {v0}, Lcom/samsung/android/share/SShareDeviceShare;->-get0(Lcom/samsung/android/share/SShareDeviceShare;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
