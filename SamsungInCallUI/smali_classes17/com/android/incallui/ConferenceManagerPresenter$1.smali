.class Lcom/android/incallui/ConferenceManagerPresenter$1;
.super Ljava/lang/Object;
.source "ConferenceManagerPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ConferenceManagerPresenter;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ConferenceManagerPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/ConferenceManagerPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ConferenceManagerPresenter$1;->this$0:Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/ConferenceManagerPresenter$1;->this$0:Lcom/android/incallui/ConferenceManagerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerPresenter;->updateCallTime()V

    return-void
.end method
