.class Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;
.super Landroid/database/ContentObserver;
.source "CustomBg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wubydax/wubydax/CustomBg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomViewObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/wubydax/wubydax/CustomBg;


# direct methods
.method public constructor <init>(Lcom/android/wubydax/wubydax/CustomBg;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;->this$0:Lcom/android/wubydax/wubydax/CustomBg;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;->this$0:Lcom/android/wubydax/wubydax/CustomBg;

    # invokes: Lcom/android/wubydax/wubydax/CustomBg;->initValues()V
    invoke-static {v0}, Lcom/android/wubydax/wubydax/CustomBg;->access$000(Lcom/android/wubydax/wubydax/CustomBg;)V

    iget-object v0, p0, Lcom/android/wubydax/wubydax/CustomBg$CustomViewObserver;->this$0:Lcom/android/wubydax/wubydax/CustomBg;

    # invokes: Lcom/android/wubydax/wubydax/CustomBg;->initView()V
    invoke-static {v0}, Lcom/android/wubydax/wubydax/CustomBg;->access$100(Lcom/android/wubydax/wubydax/CustomBg;)V

    return-void
.end method
