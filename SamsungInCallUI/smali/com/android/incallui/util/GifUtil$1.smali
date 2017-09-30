.class final Lcom/android/incallui/util/GifUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/util/GifUtil;->playGif(Lcom/android/incallui/gif/GifDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$gif:Lcom/android/incallui/gif/GifDrawable;


# direct methods
.method constructor <init>(Lcom/android/incallui/gif/GifDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/util/GifUtil$1;->val$gif:Lcom/android/incallui/gif/GifDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/util/GifUtil$1;->val$gif:Lcom/android/incallui/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/android/incallui/gif/GifDrawable;->start()V

    return-void
.end method
