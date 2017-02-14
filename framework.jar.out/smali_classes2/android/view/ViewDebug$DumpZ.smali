.class Landroid/view/ViewDebug$DumpZ;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpZ"
.end annotation


# direct methods
.method static synthetic -wrap0(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/ViewDebug$DumpZ;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteProperty(Ljava/lang/String;FLjava/io/BufferedWriter;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0xa

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v1, ","

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V
    .locals 3

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v1, "4,true "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "5,false "

    invoke-virtual {p2, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v7, 0x8000

    invoke-direct {v4, v6, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    move-object v0, v5

    nop

    nop

    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v2, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    :goto_0
    const-string/jumbo v6, "DONE."

    invoke-virtual {v4, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_0
    move-object v3, v4

    :cond_1
    :goto_1
    return-void

    :cond_2
    :try_start_2
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v5, v4, v7}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v3, v4

    :goto_2
    :try_start_3
    const-string/jumbo v6, "View"

    const-string/jumbo v7, "Problem dumping the view:"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    :cond_3
    throw v6

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 v2, 0x20

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "View"

    const-string/jumbo v3, "Error while dumping hierarchy tree"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method

.method private static dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4

    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    nop

    nop

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchy(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/ViewDebug$DumpZ;->dumpView(Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 4

    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    nop

    nop

    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewHierarchyWithProperties(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p3, 0x1

    invoke-static {p0, v2, p2, v3}, Landroid/view/ViewDebug$DumpZ;->dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v12, ""

    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/view/View;

    if-eqz v15, :cond_4

    move-object/from16 v13, p1

    nop

    nop

    const/4 v15, 0x2

    new-array v7, v15, [I

    invoke-virtual {v13, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v15

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Landroid/view/ViewDebug$DumpZ;->resolveId(Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string/jumbo v15, "id"

    move-object/from16 v0, p2

    invoke-static {v15, v12, v0}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    const-string/jumbo v15, "x"

    const/16 v16, 0x0

    aget v16, v7, v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "y"

    const/16 v16, 0x1

    aget v16, v7, v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "width"

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "height"

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "scrollx"

    invoke-virtual {v13}, Landroid/view/View;->getScrollX()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "scrolly"

    invoke-virtual {v13}, Landroid/view/View;->getScrollY()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "enable"

    invoke-virtual {v13}, Landroid/view/View;->isEnabled()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    const-string/jumbo v15, "longclickable"

    invoke-virtual {v13}, Landroid/view/View;->isLongClickable()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    const-string/jumbo v15, "clickable"

    invoke-virtual {v13}, Landroid/view/View;->isClickable()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    invoke-virtual {v13}, Landroid/view/View;->isFocusable()Z

    move-result v15

    if-eqz v15, :cond_0

    const-string/jumbo v15, "hasfocus"

    invoke-virtual {v13}, Landroid/view/View;->hasFocus()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v15, "talkback"

    invoke-virtual {v13}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    :cond_1
    const-string/jumbo v15, "isselected"

    invoke-virtual {v13}, Landroid/view/View;->isSelected()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_8

    const-string/jumbo v15, "visibility"

    const-string/jumbo v16, "VISIBLE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    :cond_2
    :goto_0
    :try_start_0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager$LayoutParams;

    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_BASE_APPLICATION"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    const-string/jumbo v15, "bottommargin"

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "leftmargin"

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "rightmargin"

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "topmargin"

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    const-string/jumbo v15, "willnotdraw"

    invoke-virtual {v13}, Landroid/view/View;->willNotDraw()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    :cond_4
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v10

    const/4 v15, 0x0

    array-length v0, v10

    move/from16 v17, v0

    move/from16 v16, v15

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2a

    aget-object v9, v10, v16

    const-string/jumbo v15, "isFillViewport"

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    const-string/jumbo v18, "fillviewport"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    :cond_5
    const-string/jumbo v15, "getFirstVisiblePosition"

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    const-string/jumbo v18, "firstposition"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    :cond_6
    const-string/jumbo v15, "getCount"

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    const-string/jumbo v18, "itemcount"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v9, v0, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-static {v0, v15, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_7
    add-int/lit8 v15, v16, 0x1

    move/from16 v16, v15

    goto :goto_3

    :cond_8
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x4

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    const-string/jumbo v15, "visibility"

    const-string/jumbo v16, "INVISIBLE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    const-string/jumbo v15, "visibility"

    const-string/jumbo v16, "GONE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_0

    :cond_a
    :try_start_3
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :catch_0
    move-exception v5

    goto/16 :goto_1

    :cond_b
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_STARTING"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_c
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3e8

    move/from16 v0, v16

    if-ne v15, v0, :cond_d

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_d
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3e9

    move/from16 v0, v16

    if-ne v15, v0, :cond_e

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_MEDIA"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_e
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3ea

    move/from16 v0, v16

    if-ne v15, v0, :cond_f

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_SUB_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_f
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x3eb

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_APPLICATION_ATTACHED_DIALOG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_10
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d0

    move/from16 v0, v16

    if-ne v15, v0, :cond_11

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_11
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d1

    move/from16 v0, v16

    if-ne v15, v0, :cond_12

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SEARCH_BAR"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_12
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d2

    move/from16 v0, v16

    if-ne v15, v0, :cond_13

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_PHONE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_13
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d3

    move/from16 v0, v16

    if-ne v15, v0, :cond_14

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SYSTEM_ALERT"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_14
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d4

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_KEYGUARD"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_15
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d5

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_TOAST"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_16
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d6

    move/from16 v0, v16

    if-ne v15, v0, :cond_17

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SYSTEM_OVERLAY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_17
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d7

    move/from16 v0, v16

    if-ne v15, v0, :cond_18

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_PRIORITY_PHONE"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_18
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7de

    move/from16 v0, v16

    if-ne v15, v0, :cond_19

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_19
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x830

    move/from16 v0, v16

    if-ne v15, v0, :cond_1a

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_PANEL_USER"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_1a
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e1

    move/from16 v0, v16

    if-ne v15, v0, :cond_1b

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_1b
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d8

    move/from16 v0, v16

    if-ne v15, v0, :cond_1c

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SYSTEM_DIALOG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_1c
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7d9

    move/from16 v0, v16

    if-ne v15, v0, :cond_1d

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_KEYGUARD_DIALOG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_1d
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7da

    move/from16 v0, v16

    if-ne v15, v0, :cond_1e

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SYSTEM_ERROR"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_1e
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7db

    move/from16 v0, v16

    if-ne v15, v0, :cond_1f

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_INPUT_METHOD"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_1f
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7dc

    move/from16 v0, v16

    if-ne v15, v0, :cond_20

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_INPUT_METHOD_DIALOG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_20
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7dd

    move/from16 v0, v16

    if-ne v15, v0, :cond_21

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_WALLPAPER"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_21
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7de

    move/from16 v0, v16

    if-ne v15, v0, :cond_22

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_22
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7df

    move/from16 v0, v16

    if-ne v15, v0, :cond_23

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_SECURE_SYSTEM_OVERLAY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_23
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e0

    move/from16 v0, v16

    if-ne v15, v0, :cond_24

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_DRAG"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_24
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e1

    move/from16 v0, v16

    if-ne v15, v0, :cond_25

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_SUB_PANEL"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_25
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e2

    move/from16 v0, v16

    if-ne v15, v0, :cond_26

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_POINTER"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_26
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e3

    move/from16 v0, v16

    if-ne v15, v0, :cond_27

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_NAVIGATION_BAR"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_27
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e4

    move/from16 v0, v16

    if-ne v15, v0, :cond_28

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_VOLUME_OVERLAY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_28
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x7e5

    move/from16 v0, v16

    if-ne v15, v0, :cond_29

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_BOOT_PROGRESS"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_1

    :cond_29
    iget v15, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v16, 0x831

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    const-string/jumbo v15, "layouttype"

    const-string/jumbo v16, "TYPE_STATUS_BAR_OVERLAY"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_1
    move-exception v5

    :cond_2a
    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/view/ViewGroup;

    if-eqz v15, :cond_2b

    move-object/from16 v6, p1

    nop

    nop

    const-string/jumbo v15, "childcount"

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v15

    const/high16 v16, 0x20000

    move/from16 v0, v16

    if-ne v15, v0, :cond_2e

    const-string/jumbo v15, "focusability"

    const-string/jumbo v16, "FOCUS_BEFORE_DESCENDANTS"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    :cond_2b
    :goto_4
    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/widget/TextView;

    if-eqz v15, :cond_2c

    move-object/from16 v14, p1

    nop

    nop

    const-string/jumbo v15, "text"

    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    :try_start_4
    const-string/jumbo v15, "stringname"

    invoke-virtual {v14}, Landroid/widget/TextView;->getStringName()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    const-string/jumbo v15, "hint"

    invoke-virtual {v14}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    const-string/jumbo v15, "selectionstart"

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    const-string/jumbo v15, "selectionend"

    invoke-virtual {v14}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ILjava/io/BufferedWriter;)V

    :cond_2c
    move-object/from16 v0, p1

    instance-of v15, v0, Landroid/widget/Checkable;

    if-eqz v15, :cond_2d

    move-object/from16 v4, p1

    check-cast v4, Landroid/widget/Checkable;

    const-string/jumbo v15, "ischecked"

    invoke-interface {v4}, Landroid/widget/Checkable;->isChecked()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;ZLjava/io/BufferedWriter;)V

    :cond_2d
    return-void

    :cond_2e
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v15

    const/high16 v16, 0x40000

    move/from16 v0, v16

    if-ne v15, v0, :cond_2f

    const-string/jumbo v15, "focusability"

    const-string/jumbo v16, "FOCUS_AFTER_DESCENDANTS"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_4

    :cond_2f
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v15

    const/high16 v16, 0x60000

    move/from16 v0, v16

    if-ne v15, v0, :cond_2b

    const-string/jumbo v15, "focusability"

    const-string/jumbo v16, "FOCUS_BLOCK_DESCENDANTS"

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    goto/16 :goto_4

    :catch_2
    move-exception v5

    goto :goto_6

    :catch_3
    move-exception v5

    goto :goto_5

    :catch_4
    move-exception v5

    goto/16 :goto_2
.end method

.method private static dumpViewWithProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;I)Z
    .locals 8

    const/4 v7, 0x0

    :try_start_0
    instance-of v5, p1, Landroid/view/View;

    if-eqz v5, :cond_0

    move-object v0, p1

    nop

    nop

    move-object v4, v0

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    return v7

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p3, :cond_1

    const/16 v5, 0x20

    invoke-virtual {p2, v5}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, ""

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v5, "class"

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v1, v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    :goto_1
    const-string/jumbo v5, "hash"

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V

    invoke-static {p0, p1, p2}, Landroid/view/ViewDebug$DumpZ;->dumpViewProperties(Landroid/content/Context;Ljava/lang/Object;Ljava/io/BufferedWriter;)V

    invoke-virtual {p2}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v5, 0x1

    return v5

    :cond_2
    const-string/jumbo v5, "class"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, p2}, Landroid/view/ViewDebug$DumpZ;->WriteProperty(Ljava/lang/String;Ljava/lang/String;Ljava/io/BufferedWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v5, "View"

    const-string/jumbo v6, "Error while dumping hierarchy tree"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method private static resolveId(Landroid/content/Context;I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-ltz p1, :cond_0

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "NO_ID"

    goto :goto_0
.end method
