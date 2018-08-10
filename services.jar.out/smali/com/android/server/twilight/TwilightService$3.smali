.class Lcom/android/server/twilight/TwilightService$3;
.super Ljava/lang/Object;
.source "TwilightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/twilight/TwilightService;->updateTwilightState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/twilight/TwilightService;

.field final synthetic val$listener:Lcom/android/server/twilight/TwilightListener;

.field final synthetic val$state:Lcom/android/server/twilight/TwilightState;


# direct methods
.method constructor <init>(Lcom/android/server/twilight/TwilightService;Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService$3;->this$0:Lcom/android/server/twilight/TwilightService;

    iput-object p2, p0, Lcom/android/server/twilight/TwilightService$3;->val$listener:Lcom/android/server/twilight/TwilightListener;

    iput-object p3, p0, Lcom/android/server/twilight/TwilightService$3;->val$state:Lcom/android/server/twilight/TwilightState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/twilight/TwilightService$3;->val$listener:Lcom/android/server/twilight/TwilightListener;

    iget-object v1, p0, Lcom/android/server/twilight/TwilightService$3;->val$state:Lcom/android/server/twilight/TwilightState;

    invoke-interface {v0, v1}, Lcom/android/server/twilight/TwilightListener;->onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method
