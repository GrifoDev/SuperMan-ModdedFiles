.class Lcom/android/systemui/tuner/TunerServiceImpl$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "TunerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/tuner/TunerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/tuner/TunerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/tuner/TunerServiceImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerServiceImpl$1;->this$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl$1;->this$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/tuner/TunerServiceImpl;->-set0(Lcom/android/systemui/tuner/TunerServiceImpl;I)I

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl$1;->this$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->-wrap0(Lcom/android/systemui/tuner/TunerServiceImpl;)V

    iget-object v0, p0, Lcom/android/systemui/tuner/TunerServiceImpl$1;->this$0:Lcom/android/systemui/tuner/TunerServiceImpl;

    invoke-virtual {v0}, Lcom/android/systemui/tuner/TunerServiceImpl;->reregisterAll()V

    return-void
.end method
