.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->-wrap4(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
