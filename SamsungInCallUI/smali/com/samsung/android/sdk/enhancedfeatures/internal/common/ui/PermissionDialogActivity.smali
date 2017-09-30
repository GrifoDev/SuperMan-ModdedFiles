.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;
.super Landroid/app/Activity;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mPermissionDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 23

    const-string v4, "onCreate."

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "permission"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "functionname"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "noti"

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "package:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->startActivity(Landroid/content/Intent;)V

    const-string v4, "notification"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    const-string v5, "COREAPPS_PERMISSION_NOTI"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->finish()V

    :goto_0
    return-void

    :cond_0
    if-nez v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->finish()V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    array-length v5, v6

    if-ge v4, v5, :cond_a

    aget-object v9, v6, v4

    const/4 v5, -0x1

    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v5, :pswitch_data_0

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :sswitch_0
    const-string v10, "PHONE_STATE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string v10, "CONTACTS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :sswitch_2
    const-string v10, "EXTERNAL_STORAGE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x2

    goto :goto_2

    :sswitch_3
    const-string v10, "SMS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v5, 0x3

    goto :goto_2

    :pswitch_0
    const-string v5, "android.permission.READ_PHONE_STATE"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_3

    const-string v5, "PERMISSION_PHONE"

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "PHONE PERMISSION DENIED"

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v5, "PHONE PERMISSION ALREADY GRANTED"

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string v5, "android.permission.READ_CONTACTS"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_4

    const-string v5, "android.permission.WRITE_CONTACTS"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_5

    :cond_4
    const-string v5, "PERMISSION_CONTACTS"

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "CONTACTS PERMISSION DENIED"

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v5, "CONTACTS PERMISSION ALREADY GRANTED"

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_6

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_7

    :cond_6
    const-string v5, "PERMISSION_STORAGE"

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "STORAGE PERMISSION DENIED"

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string v5, "STORAGE PERMISSION ALREADY GRANTED"

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    const-string v5, "android.permission.SEND_SMS"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-eq v5, v9, :cond_8

    const-string v5, "android.permission.READ_SMS"

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    const/4 v9, -0x1

    if-ne v5, v9, :cond_9

    :cond_8
    const-string v5, "PERMISSION_SMS"

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "SMS PERMISSION DENIED"

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string v5, "SMS PERMISSION ALREADY GRANTED"

    sget-object v9, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "permissionList Size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    if-nez v7, :cond_d

    sget v5, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->dialog_permission_app_desc:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget v8, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->app_name:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :goto_4
    const/4 v5, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/samsung/android/sdk/enhancedfeatures/R$layout;->layout_permission_dialog_view:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    sget v5, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Telephone:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    sget v6, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Contacts:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    sget v7, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Storage:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    sget v8, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_SMS:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    sget v9, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Telephone_icon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    sget v10, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Telephone_name:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    sget v11, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Contacts_icon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    sget v12, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Contacts_name:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    sget v13, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Storage_icon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    sget v14, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_Storage_name:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    sget v15, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_SMS_icon:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    sget v17, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_dialog_SMS_name:I

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x0

    :goto_5
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_e

    aget-object v20, v4, v17

    const/16 v18, -0x1

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_1

    :cond_c
    :goto_6
    packed-switch v18, :pswitch_data_1

    const-string v18, "default. All layout is GONE"

    sget-object v20, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->TAG:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/SDKLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :cond_d
    sget v5, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->dialog_permission_function_desc:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_4

    :sswitch_4
    const-string v21, "PERMISSION_PHONE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v18, 0x0

    goto :goto_6

    :sswitch_5
    const-string v21, "PERMISSION_CONTACTS"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v18, 0x1

    goto :goto_6

    :sswitch_6
    const-string v21, "PERMISSION_STORAGE"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v18, 0x2

    goto :goto_6

    :sswitch_7
    const-string v21, "PERMISSION_SMS"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const/16 v18, 0x3

    goto :goto_6

    :pswitch_4
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const-string v20, "perm_group_phone_calls"

    const-string v21, "drawable"

    const-string v22, "android"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const-string v20, "permgrouplab_phone"

    const-string v21, "string"

    const-string v22, "android"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_5
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const-string v20, "perm_group_contacts"

    const-string v21, "drawable"

    const-string v22, "android"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const-string v20, "permgrouplab_contacts"

    const-string v21, "string"

    const-string v22, "android"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_6
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const-string v20, "perm_group_storage"

    const-string v21, "drawable"

    const-string v22, "android"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const-string v20, "permgrouplab_storage"

    const-string v21, "string"

    const-string v22, "android"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :pswitch_7
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const-string v20, "perm_group_sms"

    const-string v21, "drawable"

    const-string v22, "android"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v18

    const-string v20, "permgrouplab_sms"

    const-string v21, "string"

    const-string v22, "android"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_e
    sget v4, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->settings:I

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$1;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    sget v4, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->cancel:I

    new-instance v5, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$2;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$3;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity$4;-><init>(Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->mPermissionDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;->mPermissionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73433dc0 -> :sswitch_0
        0x14139 -> :sswitch_3
        0xcd35053 -> :sswitch_1
        0x3c6bcde7 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6d697d22 -> :sswitch_4
        -0x3c5d973d -> :sswitch_5
        -0x5d01815 -> :sswitch_6
        0x2860a2c9 -> :sswitch_7
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
