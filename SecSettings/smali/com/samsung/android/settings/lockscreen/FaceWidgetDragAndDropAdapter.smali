.class Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;
.super Landroid/widget/BaseAdapter;
.source "FaceWidgetDragAndDropAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;,
        Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;
    }
.end annotation


# instance fields
.field private faceWidgetsItemLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDragEnabled:Z

.field private mListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;

.field private mReorderMode:Z

.field private tempString:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mListener:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$OnCheckChangeListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createDbKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    const-string/jumbo v2, "_"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v1, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, ""

    const-string/jumbo v1, "servicebox_music"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p2, :cond_2

    const v1, 0x7f1205fc

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "servicebox_calendar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_3

    const v1, 0x7f121bb8

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "servicebox_alarm"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_4

    const v1, 0x7f121269

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "add_info_music_control"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "add_info_today_schedule"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "add_info_alarm"

    goto :goto_0

    :cond_5
    if-nez p2, :cond_6

    invoke-static {p0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getAppName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-static {p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->createDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private makeDBSet(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private saveListOrder()V
    .locals 5

    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->makeDBSet(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "face_widget_order"

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->tempString:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->setChecked(Z)V

    invoke-virtual {v0, p3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->setKey(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getChecked(I)Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getChecked()Z

    move-result v1

    return v1
.end method

.method public getCount()I
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragEnabled()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    return v1

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mDragEnabled:Z

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPositionByKey(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d00ff

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;

    invoke-direct {v2, p0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;->getFaceWidgetDragCell()Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;

    move-result-object v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setLabelAndDescription(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setShowCheckbox(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setChecked(Z)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setClickable(Z)V

    :goto_1
    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->getSwitch()Landroid/widget/Switch;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;

    invoke-direct {v4, p0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$2;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getDragEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setDragHandlerPadding(Z)V

    return-object p2

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$CustomViewHolder;

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setClickable(Z)V

    new-instance v3, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$1;-><init>(Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;)V

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method moveItem(II)V
    .locals 7

    const/4 v6, 0x0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->saveListOrder()V

    return-void

    :cond_0
    const-string/jumbo v1, "LocaleDragAndDropAdapter"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "Negative position in moveItem %d -> %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setChecked(IZ)V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->faceWidgetsItemLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;

    invoke-virtual {v0, p2}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter$FaceWidgetItems;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setReorderMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->mReorderMode:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->notifyDataSetChanged()V

    return-void
.end method
