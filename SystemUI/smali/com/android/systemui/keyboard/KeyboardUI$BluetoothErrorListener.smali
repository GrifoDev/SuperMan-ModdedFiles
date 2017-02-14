.class final Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;
.super Ljava/lang/Object;
.source "KeyboardUI.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/Utils$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothErrorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;)V

    return-void
.end method


# virtual methods
.method public onShowError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothErrorListener;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->-get1(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;

    move-result-object v0

    new-instance v1, Landroid/util/Pair;

    invoke-direct {v1, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p3, v3, v1}, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
