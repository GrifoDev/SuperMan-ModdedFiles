.class public abstract Lcom/android/settings/widget/SummaryUpdater;
.super Ljava/lang/Object;
.source "SummaryUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;

.field private mSummary:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/SummaryUpdater;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/widget/SummaryUpdater;->mListener:Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;

    return-void
.end method


# virtual methods
.method protected abstract getSummary()Ljava/lang/String;
.end method

.method protected notifyChangeIfNeeded()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/widget/SummaryUpdater;->getSummary()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/SummaryUpdater;->mSummary:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/settings/widget/SummaryUpdater;->mSummary:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/widget/SummaryUpdater;->mListener:Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/widget/SummaryUpdater;->mListener:Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;

    invoke-interface {v1, v0}, Lcom/android/settings/widget/SummaryUpdater$OnSummaryChangeListener;->onSummaryChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
