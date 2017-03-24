.class Lcom/android/settings/rz/Text$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/rz/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "1"
.end annotation


# instance fields
.field private mTextColor:I

.field private final this$0:Lcom/android/settings/rz/Text;

.field private final val$c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/settings/rz/Text;Landroid/content/Context;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/settings/rz/Text$1;->this$0:Lcom/android/settings/rz/Text;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/android/settings/rz/Text$1;->val$c:Landroid/content/Context;

    return-void
.end method

.method static access$0(Lcom/android/settings/rz/Text$1;)Lcom/android/settings/rz/Text;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/rz/Text$1;->this$0:Lcom/android/settings/rz/Text;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/rz/Text$1;->this$0:Lcom/android/settings/rz/Text;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/rz/Text$1;->val$c:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/android/settings/rz/Text$1;->this$0:Lcom/android/settings/rz/Text;

    invoke-static {v9}, Lcom/android/settings/rz/Text;->access$L1000003(Lcom/android/settings/rz/Text;)Ljava/lang/String;

    move-result-object v9

    const v10, -0x1

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/settings/rz/Text;->access$S1000002(Lcom/android/settings/rz/Text;I)V

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/rz/Text$1;->this$0:Lcom/android/settings/rz/Text;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/rz/Text$1;->this$0:Lcom/android/settings/rz/Text;

    invoke-static {v8}, Lcom/android/settings/rz/Text;->access$L1000002(Lcom/android/settings/rz/Text;)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/settings/rz/Text;->setTextColor(I)V

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/rz/Text$1;->this$0:Lcom/android/settings/rz/Text;

    invoke-virtual {v7}, Lcom/android/settings/rz/Text;->invalidate()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    move-wide v2, v7

    move-wide v7, v2

    const/16 v9, 0x3e8

    int-to-long v9, v9

    move-wide v11, v2

    const/16 v13, 0x3e8

    int-to-long v13, v13

    rem-long/2addr v11, v13

    sub-long/2addr v9, v11

    add-long/2addr v7, v9

    move-wide v4, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/android/settings/rz/Text$1;->this$0:Lcom/android/settings/rz/Text;

    invoke-static {v7}, Lcom/android/settings/rz/Text;->access$L1000001(Lcom/android/settings/rz/Text;)Landroid/os/Handler;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/android/settings/rz/Text$1;->this$0:Lcom/android/settings/rz/Text;

    invoke-static {v8}, Lcom/android/settings/rz/Text;->access$L1000000(Lcom/android/settings/rz/Text;)Ljava/lang/Runnable;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result v7

    return-void
.end method
