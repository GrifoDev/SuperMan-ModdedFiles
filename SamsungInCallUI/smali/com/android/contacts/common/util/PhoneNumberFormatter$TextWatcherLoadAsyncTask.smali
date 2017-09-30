.class Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/util/PhoneNumberFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextWatcherLoadAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/telephony/PhoneNumberFormattingTextWatcher;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/widget/TextView;

.field private final c:Z


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/contacts/common/compat/PhoneNumberFormattingTextWatcherCompat;->a(Ljava/lang/String;)Landroid/telephony/PhoneNumberFormattingTextWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-boolean v0, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telephony/PhoneNumberFormattingTextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->a([Ljava/lang/Void;)Landroid/telephony/PhoneNumberFormattingTextWatcher;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/telephony/PhoneNumberFormattingTextWatcher;

    invoke-virtual {p0, p1}, Lcom/android/contacts/common/util/PhoneNumberFormatter$TextWatcherLoadAsyncTask;->a(Landroid/telephony/PhoneNumberFormattingTextWatcher;)V

    return-void
.end method
