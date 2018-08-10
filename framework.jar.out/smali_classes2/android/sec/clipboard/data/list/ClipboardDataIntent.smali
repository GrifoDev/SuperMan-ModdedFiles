.class public Landroid/sec/clipboard/data/list/ClipboardDataIntent;
.super Landroid/sec/clipboard/data/ClipboardData;
.source "ClipboardDataIntent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/sec/clipboard/data/ClipboardData;-><init>()V

    return-void
.end method


# virtual methods
.method public restoreToSemClipData()Lcom/samsung/android/content/clipboard/data/SemClipData;
    .locals 6

    new-instance v1, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    invoke-direct {v1}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;-><init>()V

    invoke-virtual {p0, v1}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->restoreBaseData(Lcom/samsung/android/content/clipboard/data/SemClipData;)V

    :try_start_0
    move-object v0, v1

    check-cast v0, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;

    move-object v3, v0

    iget-object v4, p0, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->mValue:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/content/clipboard/data/SemIntentClipData;->setIntent(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/net/URISyntaxException;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method
