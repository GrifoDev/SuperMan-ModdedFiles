.class Lcom/android/incallui/service/SecVideoPopupService$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecVideoPopupService;->onLongTouchEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecVideoPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecVideoPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecVideoPopupService$3;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecVideoPopupService$3;->this$0:Lcom/android/incallui/service/SecVideoPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecVideoPopupService;->stopSelf()V

    return-void
.end method
