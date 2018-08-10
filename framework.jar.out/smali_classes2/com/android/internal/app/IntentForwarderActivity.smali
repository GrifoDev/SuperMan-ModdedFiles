.class public Lcom/android/internal/app/IntentForwarderActivity;
.super Landroid/app/Activity;
.source "IntentForwarderActivity.java"


# static fields
.field public static FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_MANAGED_PROFILE1:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_MANAGED_PROFILE2:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_MANAGED_PROFILE3:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

.field public static FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

.field public static TAG:Ljava/lang/String;


# instance fields
.field private final TARGET_USER_ID_DEFAULT_VALUE:I

.field private targetUserIdForKnox:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "IntentForwarderActivity"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToParent"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToManagedProfile"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToManagedProfile1"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE1:Ljava/lang/String;

    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToManagedProfile2"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE2:Ljava/lang/String;

    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToManagedProfile3"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE3:Ljava/lang/String;

    const-string/jumbo v0, "com.android.internal.app.ForwardIntentToManagedProfile4"

    sput-object v0, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->TARGET_USER_ID_DEFAULT_VALUE:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    return-void
.end method

.method private canForwardForB2CKnox(Landroid/content/Intent;II)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-nez p2, :cond_5

    const/4 v1, 0x0

    new-instance v2, Landroid/os/PersonaPolicyManager;

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "persona_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    const-string/jumbo v3, "android.intent.action.CHOOSER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "android.intent.extra.INTENT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_5

    const-string/jumbo v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_0
    if-eqz v2, :cond_1

    if-eqz v2, :cond_4

    invoke-virtual {v2, p3}, Landroid/os/PersonaPolicyManager;->isMoveFilesToOwnerAllowed(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_1
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "allowed to move from container to Parent"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "not allowed to move from container to Parent"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x1040488

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_4
    sget-object v3, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "allowed to move from container to Parent"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_5
    new-instance v3, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method private canForwardForKnox(Landroid/content/Intent;II)Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const v9, 0x1040488

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_6

    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v2, Landroid/os/PersonaPolicyManager;

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "persona_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPersonaPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyManager;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Landroid/os/PersonaPolicyManager;-><init>(Landroid/content/Context;Landroid/content/pm/IPersonaPolicyManager;)V

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    invoke-virtual {v4, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isSuperLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v9}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    new-instance v5, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_0
    const/4 v1, 0x0

    const-string/jumbo v5, "android.intent.action.CHOOSER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v5, "android.intent.extra.INTENT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_6

    const-string/jumbo v5, "android.intent.action.SEND"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_1
    if-eqz v2, :cond_2

    if-eqz v2, :cond_5

    invoke-virtual {v2, p2}, Landroid/os/PersonaPolicyManager;->isMoveFilesToContainerAllowed(I)Z

    move-result v5

    if-nez v5, :cond_5

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isLegacyClId(I)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "allowed to move to container"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "not allowed to move to container"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v9}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    new-instance v5, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_5
    sget-object v5, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "allowed to move to container"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    :cond_6
    new-instance v5, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method private getCompListfromParcelableList([Landroid/os/Parcelable;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/Parcelable;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lez v2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    instance-of v2, v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getFinalExcludeCompList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Filtered src excl component #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " a ComponentName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Filtered policy excl component #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " a ComponentName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private getManagedProfile()I
    .locals 7

    const-string/jumbo v4, "user"

    invoke-virtual {p0, v4}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    return v4

    :cond_1
    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has been called, but there is no managed profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x2710

    return v4
.end method

.method private getProfileParent()I
    .locals 5

    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has been called, but there is no parent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, -0x2710

    return v2

    :cond_0
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    return v2
.end method

.method private getUriFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method private isAvailableToB2CStore(Landroid/content/Intent;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getUriFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v2, 0x0

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IsAvailableToB2CStore | false | due to userId | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IsAvailableToB2CStore | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const-string/jumbo v6, "file"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "content"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string/jumbo v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "@"

    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "media"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IsAvailableToB2CStore | false | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IsAvailableToB2CStore | false | "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private isWantToB2CStore(Landroid/content/Intent;)Z
    .locals 10

    const-string/jumbo v7, "android.intent.extra.EXCLUDE_COMPONENTS"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    const-string/jumbo v6, "com.samsung.knox.securefolder"

    const-string/jumbo v5, "com.samsung.android.knox.containeragent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".switcher.B2CStoreFilesActivity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ".switcher.fileshare.B2CStoreFilesActivity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "isWantToB2CStore"

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_3

    aget-object v7, v4, v3

    instance-of v7, v7, Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    aget-object v2, v4, v3

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    sget-object v7, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isWantToB2CStore | not support "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    return v7

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x1

    return v7
.end method


# virtual methods
.method canForward(Landroid/content/Intent;I)Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/IntentForwarderActivity;->canForwardForB2CKnox(Landroid/content/Intent;II)Landroid/util/Pair;

    move-result-object v3

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    return v6

    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/app/IntentForwarderActivity;->canForwardForKnox(Landroid/content/Intent;II)Landroid/util/Pair;

    move-result-object v4

    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    return v6

    :cond_1
    const-string/jumbo v6, "android.intent.action.CHOOSER"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "An chooser intent with extra initial intents cannot be forwarded to a different user"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_2
    const-string/jumbo v6, "android.intent.extra.REPLACEMENT_EXTRAS"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "A chooser intent with replacement extras cannot be forwarded to a different user"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    const-string/jumbo v6, "android.intent.extra.INTENT"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-nez p1, :cond_4

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Cannot forward a chooser intent with no extra android.intent.extra.INTENT"

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object p1

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v6

    invoke-interface {v2, p1, v5, v6, p2}, Landroid/content/pm/IPackageManager;->canForwardTo(Landroid/content/Intent;Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    return v6

    :catch_0
    move-exception v1

    sget-object v6, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "PackageManagerService is dead?"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 47

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v43, "user"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/UserManager;

    :try_start_0
    new-instance v35, Landroid/content/Intent;

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v43, "crossProfileTargetUserId"

    const/16 v44, -0x1

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v43

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "targetUserIdForKnox:"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v45, v0

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_PARENT:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v43

    if-eqz v43, :cond_0

    const v40, 0x1040384

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getProfileParent()I

    move-result v34

    :goto_1
    const/16 v43, -0x2710

    move/from16 v0, v34

    move/from16 v1, v43

    if-ne v0, v1, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void

    :cond_0
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v43

    if-eqz v43, :cond_9

    const v40, 0x1040385

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v43, v0

    const/16 v44, -0x1

    move/from16 v0, v43

    move/from16 v1, v44

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v34, v0

    goto :goto_1

    :cond_1
    const/16 v41, -0x1

    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE1:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_5

    const/high16 v41, 0x100000

    :cond_2
    :goto_2
    const/16 v43, -0x1

    move/from16 v0, v41

    move/from16 v1, v43

    if-eq v0, v1, :cond_8

    invoke-virtual/range {v39 .. v39}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_3
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v43

    if-eqz v43, :cond_4

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/pm/UserInfo;

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/UserInfo;->flags:I

    move/from16 v43, v0

    and-int v43, v43, v41

    move/from16 v0, v43

    move/from16 v1, v41

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v37

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v43, v0

    move/from16 v0, v43

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/IntentForwarderActivity;->targetUserIdForKnox:I

    move/from16 v34, v0

    goto :goto_1

    :cond_5
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE2:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_6

    const/high16 v41, 0x200000

    goto :goto_2

    :cond_6
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE3:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_7

    const/high16 v41, 0x800000

    goto :goto_2

    :cond_7
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->FORWARD_INTENT_TO_MANAGED_PROFILE4:Ljava/lang/String;

    move-object/from16 v0, v43

    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v43

    if-eqz v43, :cond_2

    const/high16 v41, 0x20000

    goto :goto_2

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getManagedProfile()I

    move-result v34

    goto/16 :goto_1

    :cond_9
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-class v45, Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " cannot be called directly"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, -0x1

    const/16 v34, -0x2710

    goto/16 :goto_1

    :cond_a
    new-instance v25, Landroid/content/Intent;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/16 v43, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v43, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v43, 0x3000200

    move-object/from16 v0, v25

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getUserId()I

    move-result v12

    const-string/jumbo v43, "persona"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/samsung/android/knox/SemPersonaManager;

    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "calling id : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, "/ target user id : "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v43

    if-eqz v43, :cond_b

    const/16 v18, 0x1

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/IntentForwarderActivity;->canForward(Landroid/content/Intent;I)Z

    move-result v43

    if-eqz v43, :cond_23

    const-string/jumbo v43, "android.intent.action.CHOOSER"

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_d

    const-string/jumbo v43, "android.intent.extra.INTENT"

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v20

    check-cast v20, Landroid/content/Intent;

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v43

    const/high16 v44, 0x10000

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    move/from16 v2, v44

    move/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v31

    if-eqz v31, :cond_c

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v43, v0

    if-nez v43, :cond_e

    :cond_c
    const/16 v32, 0x1

    :goto_4
    :try_start_1
    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v43

    if-eqz v43, :cond_10

    if-nez v34, :cond_10

    if-eqz v25, :cond_10

    const-string/jumbo v43, "file"

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_10

    const-string/jumbo v43, "isFromBBCProvider"

    const/16 v44, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v43

    if-nez v43, :cond_10

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v43, "base_intent"

    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v43, "com.samsung.android.bbc.fileprovider"

    const-string/jumbo v44, "com.samsung.android.bbc.fileprovider.IntentForwardActivity"

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v0, v10, v1, v2, v12}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_d
    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/content/Intent;->prepareToLeaveUser(I)V

    goto :goto_3

    :cond_e
    const-string/jumbo v43, "android"

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    xor-int/lit8 v43, v43, 0x1

    if-nez v43, :cond_c

    const-class v43, Lcom/android/internal/app/ResolverActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_f

    const-class v43, Lcom/android/internal/app/ChooserActivity;

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    :goto_5
    xor-int/lit8 v32, v43, 0x1

    goto/16 :goto_4

    :cond_f
    const/16 v43, 0x1

    goto :goto_5

    :cond_10
    const/4 v14, 0x0

    :try_start_2
    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v43

    xor-int/lit8 v43, v43, 0x1

    if-eqz v43, :cond_11

    const-string/jumbo v43, "android.intent.action.CHOOSER"

    invoke-virtual/range {v25 .. v25}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1a

    const-string/jumbo v43, "android.intent.extra.INTENT"

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/content/Intent;

    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v44, "chooser | extra_intent"

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_6
    if-eqz v14, :cond_1e

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v44, "android.intent.action.SEND"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-nez v43, :cond_12

    invoke-virtual {v14}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v43

    const-string/jumbo v44, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v43

    if-eqz v43, :cond_1e

    :cond_12
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v44, "chooser | EXTRA_EXCLUDE_COMPONENTS"

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v43

    const v44, 0x1040b3e

    invoke-virtual/range {v43 .. v44}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-static {v14, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v43, "persona_policy"

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getPersonaService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/os/PersonaPolicyManager;

    const-string/jumbo v43, "android.intent.extra.EXCLUDE_COMPONENTS"

    move-object/from16 v0, v43

    invoke-virtual {v14, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getCompListfromParcelableList([Landroid/os/Parcelable;)Ljava/util/ArrayList;

    move-result-object v33

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    if-eqz v28, :cond_13

    if-eqz v18, :cond_1b

    if-nez v34, :cond_1b

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v43

    const/16 v44, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaPolicyManager;->getExcludeComponentList(ZZ)Ljava/util/ArrayList;

    move-result-object v29

    :cond_13
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/IntentForwarderActivity;->getFinalExcludeCompList(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v17

    if-eqz v17, :cond_14

    const-string/jumbo v44, "android.intent.extra.EXCLUDE_COMPONENTS"

    const/16 v43, 0x0

    move/from16 v0, v43

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v43, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v43

    check-cast v43, [Landroid/os/Parcelable;

    move-object/from16 v0, v44

    move-object/from16 v1, v43

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_14
    if-nez v12, :cond_15

    invoke-static/range {v34 .. v34}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v43

    if-eqz v43, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/app/IntentForwarderActivity;->getUriFromIntent(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v22

    if-nez v22, :cond_1c

    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v44, "intentUris is null"

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_8
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    move/from16 v3, v34

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_9
    move-object/from16 v0, v39

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v37

    if-eqz v37, :cond_16

    invoke-virtual/range {v37 .. v37}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v43

    if-eqz v43, :cond_16

    const/16 v32, 0x0

    :cond_16
    const/4 v6, 0x0

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v43

    if-eqz v43, :cond_17

    if-nez v34, :cond_17

    const/4 v6, 0x1

    :cond_17
    if-eqz v18, :cond_22

    xor-int/lit8 v43, v6, 0x1

    if-eqz v43, :cond_22

    const-string/jumbo v43, "activity"

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v11

    invoke-virtual {v9}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v43

    if-nez v43, :cond_19

    const-string/jumbo v36, ""

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v43

    if-eqz v43, :cond_1f

    const v43, 0x1040382

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const v45, 0x1040918

    move-object/from16 v0, p0

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v45

    const/16 v46, 0x0

    aput-object v45, v44, v46

    invoke-static/range {v43 .. v44}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    :goto_a
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v43

    if-eqz v43, :cond_18

    sget-object v43, Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;->KNOX_CONTAINER_VERSION_2_5_0:Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;

    invoke-static/range {v43 .. v43}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(Lcom/samsung/android/knox/SemPersonaManager$KnoxContainerVersion;)Z

    move-result v43

    xor-int/lit8 v43, v43, 0x1

    if-eqz v43, :cond_21

    :cond_18
    new-instance v43, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v44

    const v45, 0x103012b

    invoke-direct/range {v43 .. v45}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/16 v44, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, v36

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/widget/Toast;->show()V

    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "toast | "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->finish()V

    return-void

    :cond_1a
    move-object/from16 v14, v25

    :try_start_3
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v44, "new intent"

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v16

    const/16 v24, -0x1

    const-string/jumbo v23, "?"

    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v43

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v44

    invoke-interface/range {v43 .. v44}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v24

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v43

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v44

    invoke-interface/range {v43 .. v44}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v23

    :goto_c
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "Unable to launch as UID "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " package "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, ", while running in "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    :cond_1b
    if-nez v12, :cond_13

    :try_start_5
    invoke-static/range {v34 .. v34}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v43

    const/16 v44, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v44

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaPolicyManager;->getExcludeComponentList(ZZ)Ljava/util/ArrayList;

    move-result-object v29

    goto/16 :goto_7

    :cond_1c
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v43

    const/16 v44, 0xfa

    move/from16 v0, v43

    move/from16 v1, v44

    if-ge v0, v1, :cond_1d

    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v44, "storeData"

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/app/IntentForwarderActivity;->isAvailableToB2CStore(Landroid/content/Intent;)Z

    move-result v43

    if-eqz v43, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/internal/app/IntentForwarderActivity;->isWantToB2CStore(Landroid/content/Intent;)Z

    move-result v43

    if-eqz v43, :cond_15

    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v44, "register storeData"

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v43, 0x1

    move/from16 v0, v43

    new-array v7, v0, [Landroid/content/Intent;

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v14}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string/jumbo v43, "com.sec.knox.action.storeData"

    move-object/from16 v0, v43

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v43, 0x3000001

    move/from16 v0, v43

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v43, "crossProfileTargetUserId"

    move-object/from16 v0, v43

    invoke-virtual {v8, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v43, 0x0

    aput-object v8, v7, v43

    const-string/jumbo v43, "android.intent.extra.ALTERNATE_INTENTS"

    move-object/from16 v0, v43

    invoke-virtual {v5, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_8

    :cond_1d
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "intentUris exceeds 250 | "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v45

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1e
    const/16 v43, 0x0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v43

    move/from16 v3, v44

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/app/IntentForwarderActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_9

    :cond_1f
    const/16 v42, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/IntentForwarderActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v43

    move-object/from16 v0, v27

    move-object/from16 v1, v43

    invoke-virtual {v0, v12, v1}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v42

    if-nez v42, :cond_20

    const-string/jumbo v42, "Workspace"

    :cond_20
    const v43, 0x1040382

    move-object/from16 v0, p0

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    aput-object v42, v44, v45

    invoke-static/range {v43 .. v44}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v36

    goto/16 :goto_a

    :cond_21
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v44, "Don\'t toast"

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_22
    if-eqz v32, :cond_19

    xor-int/lit8 v43, v6, 0x1

    if-eqz v43, :cond_19

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v44

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/widget/Toast;->show()V

    goto/16 :goto_b

    :cond_23
    sget-object v43, Lcom/android/internal/app/IntentForwarderActivity;->TAG:Ljava/lang/String;

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v45, "the intent: "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " cannot be forwarded from user "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string/jumbo v45, " to user "

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, v44

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :catch_1
    move-exception v19

    goto/16 :goto_c

    :catch_2
    move-exception v15

    goto/16 :goto_0
.end method
