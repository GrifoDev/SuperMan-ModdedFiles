.class Lcom/android/incallui/service/SecCallPopupService$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/service/EcidClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupService$3;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/android/incallui/Call;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$3;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$3;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$300(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/service/SecCallPopupContainer;->onEcidUpdate(Lcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method
