.class Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;
.super Ljava/lang/Object;
.source "NavigationBarSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Item"
.end annotation


# instance fields
.field mDataType:Ljava/lang/String;

.field mDef:Ljava/lang/Integer;

.field mForUser:Ljava/lang/String;

.field mIntValue:I

.field mKey:Ljava/lang/String;

.field mSettingType:Ljava/lang/String;

.field mStringValue:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Z)V
    .locals 3

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    if-eqz p6, :cond_0

    const-string/jumbo v0, "ForUser"

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mForUser:Ljava/lang/String;

    const-string/jumbo v0, "Global"

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "Secure"

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "System"

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid setting type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid setting key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string/jumbo v0, "Int"

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "String"

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid data type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mUri:Landroid/net/Uri;

    return-void
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "android.provider.Settings$"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v5, "getUriFor"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/net/Uri;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v4

    :catch_0
    move-exception v2

    const-string/jumbo v5, "NavBarSettingsHelper"

    const-string/jumbo v6, "Exception occurred"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public equals(Landroid/net/Uri;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getIntValue()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mIntValue:I

    return v0
.end method

.method public read(Landroid/content/ContentResolver;)V
    .locals 7

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "android.provider.Settings$"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mForUser:Ljava/lang/String;

    const-string/jumbo v4, "ForUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "String"

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mForUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string/jumbo v3, "Int"

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mIntValue:I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string/jumbo v3, "NavBarSettingsHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mKey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mIntValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mIntValue:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mStringValue="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mStringValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v3, "String"

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mStringValue:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "NavBarSettingsHelper"

    const-string/jumbo v4, "Exception occurred"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mForUser:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x4

    new-array v5, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    const-string/jumbo v6, "Int"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_1
    const/4 v6, 0x2

    aput-object v3, v5, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string/jumbo v3, "Int"

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    const/4 v4, -0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mIntValue:I

    goto/16 :goto_0

    :cond_4
    const-class v3, Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    if-eqz v3, :cond_6

    const-string/jumbo v3, "String"

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string/jumbo v3, "Int"

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mIntValue:I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v3, "String"

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mStringValue:Ljava/lang/String;

    goto/16 :goto_0

    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "get"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const-class v3, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v3, v5, v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    const-string/jumbo v6, "Int"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    :goto_2
    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string/jumbo v3, "Int"

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mDef:Ljava/lang/Integer;

    const/4 v5, 0x2

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mIntValue:I

    goto/16 :goto_0

    :cond_9
    const-class v3, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public registerObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get2(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->this$0:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->-get1(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;)Landroid/database/ContentObserver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public setIntValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$Item;->mIntValue:I

    return-void
.end method
