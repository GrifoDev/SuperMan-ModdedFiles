.class public Lcom/samsung/android/content/clipboard/SemClipboardManager$ClipboardEvent;
.super Ljava/lang/Object;
.source "SemClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/content/clipboard/SemClipboardManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClipboardEvent"
.end annotation


# static fields
.field public static final CLIPS_CLEARED:I = 0x3

.field public static final CLIP_ADDED:I = 0x1

.field public static final CLIP_REMOVED:I = 0x2

.field public static final CLIP_UPDATED:I = 0x4

.field public static final FILTER_UPDATED:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/content/clipboard/SemClipboardManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/content/clipboard/SemClipboardManager;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/android/content/clipboard/SemClipboardManager$ClipboardEvent;->this$0:Lcom/samsung/android/content/clipboard/SemClipboardManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
