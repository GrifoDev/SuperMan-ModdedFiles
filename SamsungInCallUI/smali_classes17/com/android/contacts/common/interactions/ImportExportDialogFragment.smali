.class public Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/common/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;
    }
.end annotation


# static fields
.field private static final ARG_CONTACTS_ARE_AVAILABLE:Ljava/lang/String; = "CONTACTS_ARE_AVAILABLE"

.field public static final EXPORT_MODE_ALL_CONTACTS:I = 0x1

.field public static final EXPORT_MODE_DEFAULT:I = -0x1

.field public static final EXPORT_MODE_FAVORITES:I = 0x0

.field private static final KEY_RES_ID:Ljava/lang/String; = "resourceId"

.field private static final KEY_SUBSCRIPTION_ID:Ljava/lang/String; = "subscriptionId"

.field public static final TAG:Ljava/lang/String; = "ImportExportDialogFragment"

.field private static mExportMode:I


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, -0x1

    sput v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 78
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 343
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;II)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->handleImportRequest(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->doShareFavoriteContacts()V

    return-void
.end method

.method private doShareFavoriteContacts()V
    .locals 12

    .prologue
    .line 233
    :try_start_0
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "display_name COLLATE NOCASE ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 236
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 238
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09052e

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 275
    .end local v6    # "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    return-void

    .line 245
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .local v11, "uriListBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 248
    .local v8, "index":I
    :cond_2
    if-eqz v8, :cond_3

    .line 249
    const/16 v0, 0x3a

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 250
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    add-int/lit8 v8, v8, 0x1

    .line 252
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 253
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    .line 255
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 257
    .local v10, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "text/x-vcard"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/contacts/common/util/ImplicitIntentsUtil;->startActivityOutsideApp(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 262
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 265
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v8    # "index":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "uriListBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v7

    .line 266
    .local v7, "e":Ljava/lang/Exception;
    const-string v0, "ImportExportDialogFragment"

    const-string v1, "Sharing contacts failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$3;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 262
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method private getSubDescription(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "record"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 332
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    .line 333
    .local v0, "name":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const v1, 0x7f0904db

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 337
    :goto_0
    return-object v1

    :cond_0
    const v1, 0x7f0904da

    .line 338
    invoke-virtual {p0, v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    aput-object v0, v2, v3

    .line 340
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/contacts/common/compat/PhoneNumberUtilsCompat;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    .line 337
    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method private handleImportRequest(II)Z
    .locals 8
    .param p1, "resId"    # I
    .param p2, "subscriptionId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 287
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/contacts/common/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/common/model/AccountTypeManager;

    move-result-object v1

    .line 288
    .local v1, "accountTypes":Lcom/android/contacts/common/model/AccountTypeManager;
    invoke-virtual {v1, v5}, Lcom/android/contacts/common/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/common/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 290
    .local v3, "size":I
    if-le v3, v5, :cond_0

    .line 292
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v2, "args":Landroid/os/Bundle;
    const-string v5, "resourceId"

    invoke-virtual {v2, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 294
    const-string v5, "subscriptionId"

    invoke-virtual {v2, v5, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 296
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f090487

    sget-object v7, Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE:Lcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;

    .line 295
    invoke-static {v5, p0, v6, v7, v2}, Lcom/android/contacts/common/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/common/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 309
    .end local v2    # "args":Landroid/os/Bundle;
    .end local p2    # "subscriptionId":I
    :goto_0
    return v4

    .line 306
    .restart local p2    # "subscriptionId":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    if-ne v3, v5, :cond_1

    .line 307
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/common/model/account/AccountWithDataSet;

    .line 308
    :goto_1
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMSIMCompatible()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 306
    .end local p2    # "subscriptionId":I
    :goto_2
    invoke-static {v6, p1, v4, p2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;I)V

    move v4, v5

    .line 309
    goto :goto_0

    .line 307
    .restart local p2    # "subscriptionId":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 308
    :cond_2
    const/4 p2, -0x1

    goto :goto_2
.end method

.method public static show(Landroid/app/FragmentManager;ZLjava/lang/Class;I)V
    .locals 4
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "contactsAreAvailable"    # Z
    .param p2, "callingActivity"    # Ljava/lang/Class;
    .param p3, "exportMode"    # I

    .prologue
    .line 87
    new-instance v1, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;-><init>()V

    .line 88
    .local v1, "fragment":Lcom/android/contacts/common/interactions/ImportExportDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "CONTACTS_ARE_AVAILABLE"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 90
    const-string v2, "CALLING_ACTIVITY"

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v1, v0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    const-string v2, "ImportExportDialogFragment"

    invoke-virtual {v1, p0, v2}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 93
    sput p3, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I

    .line 94
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public onAccountChosen(Lcom/android/contacts/common/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "account"    # Lcom/android/contacts/common/model/account/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "subscriptionId"

    .line 318
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 317
    invoke-static {v0, v1, p1, v2}, Lcom/android/contacts/common/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/common/model/account/AccountWithDataSet;I)V

    .line 322
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->dismiss()V

    .line 323
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->dismiss()V

    .line 329
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 104
    invoke-static {p0}, Lcom/android/contacts/commonbind/analytics/AnalyticsUtil;->sendScreenView(Landroid/app/Fragment;)V

    .line 105
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 111
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "layout_inflater"

    .line 112
    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 113
    .local v4, "dialogInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "CONTACTS_ARE_AVAILABLE"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 114
    .local v3, "contactsAreAvailable":Z
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "CALLING_ACTIVITY"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "callingActivity":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f040175

    invoke-direct {v0, p0, v10, v11, v4}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$1;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 131
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;>;"
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string v11, "phone"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 132
    .local v6, "manager":Landroid/telephony/TelephonyManager;
    const v10, 0x7f0e0006

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 133
    new-instance v10, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v11, 0x7f0904dc

    invoke-virtual {p0, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0904dc

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 137
    :cond_0
    invoke-static {}, Lcom/android/contacts/common/compat/CompatUtils;->isMSIMCompatible()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 138
    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    iput-object v10, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 139
    if-eqz v6, :cond_1

    const v10, 0x7f0e0008

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 140
    const/4 v9, 0x0

    .line 142
    .local v9, "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :try_start_0
    iget-object v10, p0, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 147
    :goto_0
    if-eqz v9, :cond_1

    .line 148
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_4

    .line 149
    new-instance v11, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v10, 0x7f0904d9

    invoke-virtual {p0, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f0904d9

    const/4 v10, 0x0

    .line 150
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v10}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v10

    invoke-direct {v11, v12, v13, v10}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/CharSequence;II)V

    .line 149
    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 167
    .end local v9    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_1
    :goto_1
    const v10, 0x7f0e0005

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 168
    if-eqz v3, :cond_2

    .line 169
    new-instance v10, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v11, 0x7f0904bb

    invoke-virtual {p0, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0904bb

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 173
    :cond_2
    const v10, 0x7f0e0007

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_3

    if-eqz v3, :cond_3

    .line 174
    sget v10, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->mExportMode:I

    if-nez v10, :cond_6

    .line 176
    new-instance v10, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v11, 0x7f09057d

    invoke-virtual {p0, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f09057a

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 186
    :cond_3
    :goto_2
    new-instance v2, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$2;-><init>(Lcom/android/contacts/common/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;Ljava/lang/String;)V

    .line 223
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v11, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v11, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v3, :cond_7

    const v10, 0x7f090486

    .line 224
    :goto_3
    invoke-virtual {v11, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, -0x1

    .line 227
    invoke-virtual {v10, v0, v11, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    .line 228
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    return-object v10

    .line 143
    .end local v2    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    .restart local v9    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :catch_0
    move-exception v5

    .line 144
    .local v5, "e":Ljava/lang/SecurityException;
    const-string v10, "ImportExportDialogFragment"

    const-string v11, "SecurityException thrown, lack permission for getActiveSubscriptionInfoList"

    invoke-static {v10, v11, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 152
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 153
    .local v7, "record":Landroid/telephony/SubscriptionInfo;
    new-instance v11, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    invoke-direct {p0, v7}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getSubDescription(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    const v13, 0x7f0904d9

    .line 154
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v14

    invoke-direct {v11, v12, v13, v14}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/CharSequence;II)V

    .line 153
    invoke-virtual {v0, v11}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 160
    .end local v7    # "record":Landroid/telephony/SubscriptionInfo;
    .end local v9    # "subInfoRecords":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    :cond_5
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0e0008

    .line 161
    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 162
    new-instance v10, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v11, 0x7f0904d9

    invoke-virtual {p0, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f0904d9

    const/4 v13, -0x1

    invoke-direct {v10, v11, v12, v13}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 181
    :cond_6
    new-instance v10, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;

    const v11, 0x7f09057a

    invoke-virtual {p0, v11}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f09057a

    invoke-direct {v10, v11, v12}, Lcom/android/contacts/common/interactions/ImportExportDialogFragment$AdapterEntry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v10}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 223
    .restart local v2    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_7
    const v10, 0x7f090485

    goto :goto_3
.end method
