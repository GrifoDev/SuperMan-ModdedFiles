.class public final Lcom/android/contacts/common/util/PhoneNumberFormatter;
.super Ljava/lang/Object;
.source "PhoneNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/contacts/common/util/PhoneNumberFormatter;->setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;Z)V

    return-void
.end method

.method public static final setPhoneNumberFormattingTextWatcher(Landroid/content/Context;Landroid/widget/TextView;Z)V
    .locals 3

    new-instance v1, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;

    invoke-static {p0}, Lcom/android/contacts/common/GeoUtil;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1, p2}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;-><init>(Ljava/lang/String;Landroid/widget/TextView;Z)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
