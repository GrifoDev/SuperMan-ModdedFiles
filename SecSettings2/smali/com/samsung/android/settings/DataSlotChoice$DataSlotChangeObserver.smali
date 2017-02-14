.class Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;
.super Landroid/database/ContentObserver;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataSlotChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DataSlotChoice;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/DataSlotChoice;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, " DataSlotChangeObserver."

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap1(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string/jumbo v0, " DataSlotChangeObserver -onChange"

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice;->-set2(Lcom/samsung/android/settings/DataSlotChoice;Z)Z

    const-string/jumbo v0, "DataSlotChoice"

    const-string/jumbo v1, "Send message UPDATE_UI"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/DataSlotChoice$DataSlotChangeObserver;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v0}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    return-void
.end method
