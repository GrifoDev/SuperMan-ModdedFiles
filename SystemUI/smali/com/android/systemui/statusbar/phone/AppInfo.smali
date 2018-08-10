.class Lcom/android/systemui/statusbar/phone/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mUser:Landroid/os/UserHandle;


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AppInfo;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/phone/AppInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/AppInfo;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/AppInfo;->mUser:Landroid/os/UserHandle;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/AppInfo;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_2
    return v1
.end method
