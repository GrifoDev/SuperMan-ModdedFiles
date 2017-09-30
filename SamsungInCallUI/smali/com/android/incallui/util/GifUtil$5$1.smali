.class Lcom/android/incallui/util/GifUtil$5$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/GifUtil$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/util/GifUtil$5;


# direct methods
.method constructor <init>(Lcom/android/incallui/util/GifUtil$5;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/GifUtil$5$1;->this$1:Lcom/android/incallui/util/GifUtil$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil$5$1;->this$1:Lcom/android/incallui/util/GifUtil$5;

    iget-object v0, v0, Lcom/android/incallui/util/GifUtil$5;->this$0:Lcom/android/incallui/util/GifUtil;

    invoke-virtual {v0}, Lcom/android/incallui/util/GifUtil;->updateView()V

    return-void
.end method
