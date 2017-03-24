.class Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$1;
.super Landroid/os/Handler;
.source "SViewCoverUnlockArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea$1;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;

    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;->-wrap0(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockArea;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
