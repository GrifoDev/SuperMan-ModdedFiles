.class public interface abstract Lcom/samsung/android/voip/SemVoipInterfaceManager$CommandListener;
.super Ljava/lang/Object;
.source "SemVoipInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/voip/SemVoipInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CommandListener"
.end annotation


# static fields
.field public static final COMMAND_ANSWER_CALL:I = 0x1

.field public static final COMMAND_DISCONNECT_CALL:I = 0x2

.field public static final COMMAND_HOLD_CALL:I = 0x3

.field public static final COMMAND_MOVE_TO_TOP:I = 0x5

.field public static final COMMAND_MUTE_CALL:I = 0x6

.field public static final COMMAND_RESUME_CALL:I = 0x4


# virtual methods
.method public abstract onCommandReceived(I)V
.end method
