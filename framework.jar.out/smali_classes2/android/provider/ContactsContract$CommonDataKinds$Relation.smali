.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    return-object p2

    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    const v0, 0x1040618

    return v0

    :pswitch_0
    const v0, 0x1040888

    return v0

    :pswitch_1
    const v0, 0x1040889

    return v0

    :pswitch_2
    const v0, 0x104088a

    return v0

    :pswitch_3
    const v0, 0x104088c

    return v0

    :pswitch_4
    const v0, 0x104088d

    return v0

    :pswitch_5
    const v0, 0x104088e

    return v0

    :pswitch_6
    const v0, 0x104088f

    return v0

    :pswitch_7
    const v0, 0x1040890

    return v0

    :pswitch_8
    const v0, 0x1040891

    return v0

    :pswitch_9
    const v0, 0x1040892

    return v0

    :pswitch_a
    const v0, 0x1040893

    return v0

    :pswitch_b
    const v0, 0x1040894

    return v0

    :pswitch_c
    const v0, 0x1040895

    return v0

    :pswitch_d
    const v0, 0x1040896

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
