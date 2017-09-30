.class Lcom/android/incallui/service/VideoPipService$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/VideoPipService;->onLongTouchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/VideoPipService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/VideoPipService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/VideoPipService$4;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$4;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v0}, Lcom/android/incallui/service/VideoPipService;->stopPipService()V

    return-void
.end method
