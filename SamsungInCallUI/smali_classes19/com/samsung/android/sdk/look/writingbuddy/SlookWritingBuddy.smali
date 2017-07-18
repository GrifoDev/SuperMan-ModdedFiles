.class public final Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;
.super Ljava/lang/Object;
.source "SlookWritingBuddy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$ImageWritingListener;,
        Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$TextWritingListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WritingBuddy"

.field public static final TYPE_EDITOR_NUMBER:I = 0x1

.field public static final TYPE_EDITOR_TEXT:I = 0x2


# instance fields
.field private mImageWritingListener:Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$ImageWritingListener;

.field private mParentView:Landroid/view/View;

.field private mSlook:Lcom/samsung/android/sdk/look/Slook;

.field private mTextWritingListener:Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$TextWritingListener;

.field private mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v1}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WritingBuddy"

    const-string v2, "This is not supported in device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {v1, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    :try_start_0
    const-string v1, "SlookWritingBuddy"

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->insertLogForAPI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v1}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->isSupport(I)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "WritingBuddy"

    const-string v2, "This is not supported in device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-direct {v1, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    :try_start_0
    const-string v1, "SlookWritingBuddy"

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->insertLogForAPI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission is required."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$0(Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;)Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$TextWritingListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mTextWritingListener:Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$TextWritingListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;)Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$ImageWritingListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mImageWritingListener:Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$ImageWritingListener;

    return-object v0
.end method

.method private insertLogForAPI(Ljava/lang/String;)V
    .locals 12

    iget-object v9, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x0

    const/4 v8, -0x1

    new-instance v7, Lcom/samsung/android/sdk/look/Slook;

    invoke-direct {v7}, Lcom/samsung/android/sdk/look/Slook;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Lcom/samsung/android/sdk/look/Slook;->getVersionCode()I

    move-result v6

    new-instance v9, Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "#"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v9, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.samsung.android.providers.context"

    const/16 v11, 0x80

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v8, v5, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v9, "SM_SDK"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "context framework\'s  versionCode: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    iget-object v9, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY"

    invoke-virtual {v9, v10}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_2

    new-instance v9, Ljava/lang/SecurityException;

    invoke-direct {v9}, Ljava/lang/SecurityException;-><init>()V

    throw v9

    :catch_0
    move-exception v3

    const-string v9, "SM_SDK"

    const-string v10, "Could not find ContextProvider"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v9, "SM_SDK"

    const-string v10, "Add com.samsung.android.providers.context.permission.WRITE_USE_APP_FEATURE_SURVEY permission"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "app_id"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "feature"

    invoke-virtual {v2, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "extra"

    invoke-virtual {v2, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "WritingBuddy"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "data"

    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v9, "com.samsung.android.providers.context"

    invoke-virtual {v1, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method private isSupport(I)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mSlook:Lcom/samsung/android/sdk/look/Slook;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/Slook;->isFeatureEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEditorType()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {v0}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->getEditorType()I

    move-result v0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mParentView is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isWritingBuddyEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public setEditorType(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setEditorType(I)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mParentView is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->getWritingBuddy(Z)Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setWritingBuddyEnabled(Z)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WritingBuddy was not enabled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setImageWritingListener(Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$ImageWritingListener;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mImageWritingListener:Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$ImageWritingListener;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setImageWritingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnImageWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setImageWritingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    new-instance v1, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$2;-><init>(Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnImageWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnImageWritingListener;)V

    goto :goto_0
.end method

.method public setTextWritingListener(Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$TextWritingListener;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->isSupport(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mTextWritingListener:Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$TextWritingListener;

    iget-object v0, p0, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;->mWritingBuddyImpl:Lcom/samsung/android/writingbuddy/WritingBuddyImpl;

    new-instance v1, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy$1;-><init>(Lcom/samsung/android/sdk/look/writingbuddy/SlookWritingBuddy;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/writingbuddy/WritingBuddyImpl;->setOnTextWritingListener(Lcom/samsung/android/writingbuddy/WritingBuddyImpl$OnTextWritingListener;)V

    goto :goto_0
.end method
