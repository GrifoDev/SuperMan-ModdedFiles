.class Lcom/samsung/android/settings/display/IconBackgrounds$1$2;
.super Ljava/lang/Object;
.source "IconBackgrounds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/IconBackgrounds$1;->onStateReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/display/IconBackgrounds$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/IconBackgrounds$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1$2;->this$1:Lcom/samsung/android/settings/display/IconBackgrounds$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/IconBackgrounds$1$2;->this$1:Lcom/samsung/android/settings/display/IconBackgrounds$1;

    iget-object v0, v0, Lcom/samsung/android/settings/display/IconBackgrounds$1;->this$0:Lcom/samsung/android/settings/display/IconBackgrounds;

    invoke-virtual {v0}, Lcom/samsung/android/settings/display/IconBackgrounds;->saveCurrentSetting()V

    return-void
.end method
