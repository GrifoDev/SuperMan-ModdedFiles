.class Lcom/android/incallui/CallCardPresenter$3;
.super Ljava/lang/Object;
.source "CallCardPresenter.java"

# interfaces
.implements Lcom/android/incallui/service/EcidClient$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardPresenter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardPresenter;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/incallui/CallCardPresenter$3;->this$0:Lcom/android/incallui/CallCardPresenter;

    # invokes: Lcom/android/incallui/CallCardPresenter;->onEcidUpdate(Lcom/android/incallui/Call;)V
    invoke-static {v0, p1}, Lcom/android/incallui/CallCardPresenter;->access$400(Lcom/android/incallui/CallCardPresenter;Lcom/android/incallui/Call;)V

    .line 223
    return-void
.end method
