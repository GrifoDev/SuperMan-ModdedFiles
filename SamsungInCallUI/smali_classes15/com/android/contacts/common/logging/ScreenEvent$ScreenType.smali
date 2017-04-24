.class public final Lcom/android/contacts/common/logging/ScreenEvent$ScreenType;
.super Ljava/lang/Object;
.source "ScreenEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/logging/ScreenEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenType"
.end annotation


# static fields
.field public static final ALL_CONTACTS:I = 0x4

.field public static final EDITOR:I = 0x6

.field public static final FAVORITES:I = 0x3

.field public static final QUICK_CONTACT:I = 0x5

.field public static final SEARCH:I = 0x1

.field public static final SEARCH_EXIT:I = 0x2

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFriendlyName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Search"

    goto :goto_0

    :pswitch_1
    const-string v0, "Favorites"

    goto :goto_0

    :pswitch_2
    const-string v0, "AllContacts"

    goto :goto_0

    :pswitch_3
    const-string v0, "QuickContact"

    goto :goto_0

    :pswitch_4
    const-string v0, "Editor"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
