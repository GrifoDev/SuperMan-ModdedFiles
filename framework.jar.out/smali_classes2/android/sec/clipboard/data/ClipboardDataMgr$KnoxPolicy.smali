.class Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;
.super Ljava/lang/Object;
.source "ClipboardDataMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/ClipboardDataMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KnoxPolicy"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;


# direct methods
.method private constructor <init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V
    .locals 0

    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/sec/clipboard/data/ClipboardDataMgr;Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;-><init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V

    return-void
.end method


# virtual methods
.method public isAllowedSharingKnoxDataToPersonal(I)Z
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-static {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->-get0(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isAllowedSharingKnoxDataToPersonal(I)Z

    move-result v0

    return v0
.end method

.method public isAllowedSharingPersonalDataToKnox(I)Z
    .locals 1

    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$KnoxPolicy;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-static {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->-get0(Landroid/sec/clipboard/data/ClipboardDataMgr;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->getInstance(Landroid/content/Context;)Landroid/sec/clipboard/util/ClipboardPolicyObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/util/ClipboardPolicyObserver;->isAllowedSharingPersonalDataToKnox(I)Z

    move-result v0

    return v0
.end method
