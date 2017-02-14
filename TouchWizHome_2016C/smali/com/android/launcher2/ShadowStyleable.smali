.class public Lcom/android/launcher2/ShadowStyleable;
.super Ljava/lang/Object;
.source "ShadowStyleable.java"


# static fields
.field public static FrameLayout_Layout:[I

.field public static FrameLayout_Layout_layout_gravity:I

.field public static LinearLayout:[I

.field public static LinearLayout_Layout:[I

.field public static LinearLayout_Layout_layout_gravity:I

.field public static LinearLayout_Layout_layout_height:I

.field public static LinearLayout_Layout_layout_weight:I

.field public static LinearLayout_Layout_layout_width:I

.field public static LinearLayout_baselineAligned:I

.field public static LinearLayout_baselineAlignedChildIndex:I

.field public static LinearLayout_divider:I

.field public static LinearLayout_dividerPadding:I

.field public static LinearLayout_gravity:I

.field public static LinearLayout_measureWithLargestChild:I

.field public static LinearLayout_orientation:I

.field public static LinearLayout_showDividers:I

.field public static TextView:[I

.field public static TextView_drawablePadding:I

.field public static TextView_ellipsize:I

.field public static TextView_gravity:I

.field public static TextView_lines:I

.field public static TextView_scrollHorizontally:I

.field public static TextView_singleLine:I

.field public static TextView_textSize:I

.field public static View:[I

.field public static ViewGroup_Layout:[I

.field public static ViewGroup_Layout_layout_height:I

.field public static ViewGroup_Layout_layout_width:I

.field public static ViewGroup_MarginLayout:[I

.field public static ViewGroup_MarginLayout_layout_height:I

.field public static ViewGroup_MarginLayout_layout_margin:I

.field public static ViewGroup_MarginLayout_layout_marginBottom:I

.field public static ViewGroup_MarginLayout_layout_marginLeft:I

.field public static ViewGroup_MarginLayout_layout_marginRight:I

.field public static ViewGroup_MarginLayout_layout_marginTop:I

.field public static ViewGroup_MarginLayout_layout_width:I

.field public static View_alpha:I

.field public static View_background:I

.field public static View_clickable:I

.field public static View_longClickable:I

.field public static View_minHeight:I

.field public static View_minWidth:I

.field public static View_padding:I

.field public static View_paddingBottom:I

.field public static View_paddingLeft:I

.field public static View_paddingRight:I

.field public static View_paddingTop:I

.field public static View_rotation:I

.field public static View_rotationX:I

.field public static View_rotationY:I

.field public static View_scaleX:I

.field public static View_scaleY:I

.field public static View_transformPivotX:I

.field public static View_transformPivotY:I

.field public static View_translationX:I

.field public static View_translationY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 5

    const-string v3, "android.R$styleable"

    invoke-static {v3}, Lcom/android/launcher2/Reflection;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    const-string v3, "View"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->View:[I

    const-string v3, "View_alpha"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_alpha:I

    const-string v3, "View_background"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_background:I

    const-string v3, "View_clickable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_clickable:I

    const-string v3, "View_longClickable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_longClickable:I

    const-string v3, "View_minHeight"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_minHeight:I

    const-string v3, "View_minWidth"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_minWidth:I

    const-string v3, "View_padding"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_padding:I

    const-string v3, "View_paddingBottom"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_paddingBottom:I

    const-string v3, "View_paddingLeft"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_paddingLeft:I

    const-string v3, "View_paddingRight"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_paddingRight:I

    const-string v3, "View_paddingTop"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_paddingTop:I

    const-string v3, "View_rotation"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_rotation:I

    const-string v3, "View_rotationX"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_rotationX:I

    const-string v3, "View_rotationY"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_rotationY:I

    const-string v3, "View_scaleX"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_scaleX:I

    const-string v3, "View_scaleY"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_scaleY:I

    const-string v3, "View_transformPivotX"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_transformPivotX:I

    const-string v3, "View_transformPivotY"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_transformPivotY:I

    const-string v3, "View_translationX"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_translationX:I

    const-string v3, "View_translationY"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->View_translationY:I

    const-string v3, "TextView"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    const-string v3, "TextView_drawablePadding"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_drawablePadding:I

    const-string v3, "TextView_ellipsize"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_ellipsize:I

    const-string v3, "TextView_gravity"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_gravity:I

    const-string v3, "TextView_lines"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_lines:I

    const-string v3, "TextView_scrollHorizontally"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_scrollHorizontally:I

    const-string v3, "TextView_singleLine"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_singleLine:I

    const-string v3, "TextView_textSize"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_textSize:I

    const-string v3, "FrameLayout_Layout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->FrameLayout_Layout:[I

    const-string v3, "TextView_drawablePadding"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->TextView_drawablePadding:I

    const-string v3, "LinearLayout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout:[I

    const-string v3, "LinearLayout_baselineAligned"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_baselineAligned:I

    const-string v3, "LinearLayout_baselineAlignedChildIndex"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_baselineAlignedChildIndex:I

    const-string v3, "LinearLayout_divider"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_divider:I

    const-string v3, "LinearLayout_dividerPadding"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_dividerPadding:I

    const-string v3, "LinearLayout_gravity"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_gravity:I

    const-string v3, "LinearLayout_measureWithLargestChild"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_measureWithLargestChild:I

    const-string v3, "LinearLayout_orientation"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_orientation:I

    const-string v3, "LinearLayout_showDividers"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_showDividers:I

    const-string v3, "LinearLayout_Layout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout:[I

    const-string v3, "LinearLayout_Layout_layout_gravity"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_gravity:I

    const-string v3, "LinearLayout_Layout_layout_height"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_height:I

    const-string v3, "LinearLayout_Layout_layout_weight"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_weight:I

    const-string v3, "LinearLayout_Layout_layout_width"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->LinearLayout_Layout_layout_width:I

    const-string v3, "ViewGroup_Layout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_Layout:[I

    const-string v3, "ViewGroup_Layout_layout_height"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_Layout_layout_height:I

    const-string v3, "ViewGroup_Layout_layout_width"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_Layout_layout_width:I

    const-string v3, "ViewGroup_MarginLayout"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    check-cast v3, [I

    sput-object v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout:[I

    const-string v3, "ViewGroup_MarginLayout_layout_height"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_height:I

    const-string v3, "ViewGroup_MarginLayout_layout_margin"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_margin:I

    const-string v3, "ViewGroup_MarginLayout_layout_marginBottom"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginBottom:I

    const-string v3, "ViewGroup_MarginLayout_layout_marginLeft"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginLeft:I

    const-string v3, "ViewGroup_MarginLayout_layout_marginRight"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginRight:I

    const-string v3, "ViewGroup_MarginLayout_layout_marginTop"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_marginTop:I

    const-string v3, "ViewGroup_MarginLayout_layout_width"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v3

    sput v3, Lcom/android/launcher2/ShadowStyleable;->ViewGroup_MarginLayout_layout_width:I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
