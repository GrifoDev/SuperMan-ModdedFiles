.class final Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/sns/SecLinkedInHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LinkedinHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/sns/SecLinkedInHelper;


# direct methods
.method private constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/sns/SecLinkedInHelper;Lcom/android/incallui/sns/SecLinkedInHelper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;-><init>(Lcom/android/incallui/sns/SecLinkedInHelper;)V

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
    iget-object v0, p0, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinHandler;->this$0:Lcom/android/incallui/sns/SecLinkedInHelper;

    invoke-static {v0}, Lcom/android/incallui/sns/SecLinkedInHelper;->access$1000(Lcom/android/incallui/sns/SecLinkedInHelper;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
