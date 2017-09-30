.class public Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field static instance:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;
    .locals 2

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->instance:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->instance:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;

    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->instance:Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearAll(Landroid/app/NotificationManager;)V
    .locals 0

    invoke-virtual {p1}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public show_permission_notification(Landroid/content/Context;Landroid/app/NotificationManager;[Ljava/lang/String;)Z
    .locals 10

    const-string v0, "show_permission_notification."

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string v0, "permissionList Null"

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permission Size : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_8

    aget-object v4, p3, v0

    const/4 v1, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v1, :pswitch_data_0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_0
    const-string v5, "CONTACTS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x0

    goto :goto_2

    :sswitch_1
    const-string v5, "EXTERNAL_STORAGE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_2
    const-string v5, "SMS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    :pswitch_0
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_3

    :cond_2
    const-string v1, "PERMISSION_CONTACTS"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "CONTACTS PERMISSION DENIED"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    const-string v1, "CONTACTS PERMISSION ALREADY GRANTED"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_5

    :cond_4
    const-string v1, "PERMISSION_STORAGE"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "STORAGE PERMISSION DENIED"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v1, "STORAGE PERMISSION ALREADY GRANTED"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    const-string v1, "android.permission.SEND_SMS"

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_6

    const-string v1, "android.permission.READ_SMS"

    invoke-static {p1, v1}, Landroid/support/v4/app/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_7

    :cond_6
    const-string v1, "PERMISSION_SMS"

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "SMS PERMISSION DENIED"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    const-string v1, "SMS PERMISSION ALREADY GRANTED"

    sget-object v4, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/PermissionNotification;->TAG:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/samsung/android/sdk/ssf/common/util/CommonLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v1, 0x0

    if-eqz v3, :cond_a

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_a
    move-object v4, v1

    :goto_4
    if-eqz v4, :cond_d

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_5
    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_b

    const-string v1, ""

    :cond_b
    new-instance v5, Landroid/widget/RemoteViews;

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$layout;->layout_permission_notification:I

    invoke-direct {v5, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_noti_title:I

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->noti_permission_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_noti_description:I

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->noti_permission_desc:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->btn_permission_settings:I

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->settings:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const/4 v2, 0x0

    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_e

    aget-object v6, v0, v2

    const/4 v3, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_1

    :cond_c
    :goto_7
    packed-switch v3, :pswitch_data_1

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Telephone:I

    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Contacts:I

    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Storage:I

    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_SMS:I

    const/16 v6, 0x8

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :catch_0
    move-exception v4

    move-object v4, v1

    goto :goto_4

    :cond_d
    const-string v1, ""

    goto :goto_5

    :sswitch_3
    const-string v7, "PERMISSION_PHONE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v3, 0x0

    goto :goto_7

    :sswitch_4
    const-string v7, "PERMISSION_CONTACTS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v3, 0x1

    goto :goto_7

    :sswitch_5
    const-string v7, "PERMISSION_STORAGE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v3, 0x2

    goto :goto_7

    :sswitch_6
    const-string v7, "PERMISSION_SMS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v3, 0x3

    goto :goto_7

    :pswitch_3
    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Telephone:I

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Telephone_icon:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "perm_group_phone_calls"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "permgrouplab_phone"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v6, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Telephone_name:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_8

    :pswitch_4
    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Contacts:I

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Contacts_icon:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "perm_group_contacts"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "permgrouplab_contacts"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v6, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Contacts_name:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_8

    :pswitch_5
    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Storage:I

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Storage_icon:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "perm_group_storage"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "permgrouplab_storage"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v6, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_Storage_name:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_8

    :pswitch_6
    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_SMS:I

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_SMS_icon:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "perm_group_sms"

    const-string v8, "drawable"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    const-string v6, "permgrouplab_sms"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v3, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget v6, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->permission_SMS_name:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_e
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/ui/PermissionDialogActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "noti"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v2, Landroid/support/v4/app/ac$d;

    invoke-direct {v2, p1}, Landroid/support/v4/app/ac$d;-><init>(Landroid/content/Context;)V

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->noti_permission_title:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/ac$d;->a(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    sget v3, Lcom/samsung/android/sdk/enhancedfeatures/R$string;->noti_permission_desc:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ac$d;->b(Ljava/lang/CharSequence;)Landroid/support/v4/app/ac$d;

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ac$d;->c(I)Landroid/support/v4/app/ac$d;

    if-eqz v4, :cond_f

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_f

    iget v1, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ac$d;->a(I)Landroid/support/v4/app/ac$d;

    :cond_f
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ac$d;->b(Z)Landroid/support/v4/app/ac$d;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/support/v4/app/ac$d;->b(I)Landroid/support/v4/app/ac$d;

    sget v1, Lcom/samsung/android/sdk/enhancedfeatures/R$id;->btn_permission_settings:I

    invoke-virtual {v5, v1, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/support/v4/app/ac$d;->b()Landroid/app/Notification;

    move-result-object v0

    iput-object v5, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    const-string v1, "COREAPPS_PERMISSION_NOTI"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    const/4 v0, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x14139 -> :sswitch_2
        0xcd35053 -> :sswitch_0
        0x3c6bcde7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x6d697d22 -> :sswitch_3
        -0x3c5d973d -> :sswitch_4
        -0x5d01815 -> :sswitch_5
        0x2860a2c9 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
