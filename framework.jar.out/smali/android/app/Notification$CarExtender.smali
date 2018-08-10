.class public final Landroid/app/Notification$CarExtender;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Landroid/app/Notification$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CarExtender"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Notification$CarExtender$Builder;,
        Landroid/app/Notification$CarExtender$UnreadConversation;
    }
.end annotation


# static fields
.field private static final EXTRA_CAR_EXTENDER:Ljava/lang/String; = "android.car.EXTENSIONS"

.field private static final EXTRA_COLOR:Ljava/lang/String; = "app_color"

.field private static final EXTRA_CONVERSATION:Ljava/lang/String; = "car_conversation"

.field private static final EXTRA_LARGE_ICON:Ljava/lang/String; = "large_icon"

.field private static final TAG:Ljava/lang/String; = "CarExtender"


# instance fields
.field private mColor:I

.field private mLargeIcon:Landroid/graphics/Bitmap;

.field private mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v4, p0, Landroid/app/Notification$CarExtender;->mColor:I

    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    const-string/jumbo v2, "large_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    const-string/jumbo v2, "app_color"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/app/Notification$CarExtender;->mColor:I

    const-string/jumbo v2, "car_conversation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/app/Notification$CarExtender$UnreadConversation;->getUnreadConversationFromBundle(Landroid/os/Bundle;)Landroid/app/Notification$CarExtender$UnreadConversation;

    move-result-object v2

    iput-object v2, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    :cond_0
    return-void

    :cond_1
    iget-object v2, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    const-string/jumbo v2, "large_icon"

    iget-object v3, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget v2, p0, Landroid/app/Notification$CarExtender;->mColor:I

    if-eqz v2, :cond_1

    const-string/jumbo v2, "app_color"

    iget v3, p0, Landroid/app/Notification$CarExtender;->mColor:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v2, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    invoke-virtual {v2}, Landroid/app/Notification$CarExtender$UnreadConversation;->getBundleForUnreadConversation()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "car_conversation"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_2
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.car.EXTENSIONS"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object p1
.end method

.method public getColor()I
    .locals 1

    iget v0, p0, Landroid/app/Notification$CarExtender;->mColor:I

    return v0
.end method

.method public getLargeIcon()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getUnreadConversation()Landroid/app/Notification$CarExtender$UnreadConversation;
    .locals 1

    iget-object v0, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    return-object v0
.end method

.method public setColor(I)Landroid/app/Notification$CarExtender;
    .locals 0

    iput p1, p0, Landroid/app/Notification$CarExtender;->mColor:I

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$CarExtender;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mLargeIcon:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setUnreadConversation(Landroid/app/Notification$CarExtender$UnreadConversation;)Landroid/app/Notification$CarExtender;
    .locals 0

    iput-object p1, p0, Landroid/app/Notification$CarExtender;->mUnreadConversation:Landroid/app/Notification$CarExtender$UnreadConversation;

    return-object p0
.end method
