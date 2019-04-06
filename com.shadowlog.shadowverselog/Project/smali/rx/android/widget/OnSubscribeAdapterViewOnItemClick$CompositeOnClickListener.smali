.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeOnClickListener"
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;)V
    .locals 0
    .param p1, "x0"    # Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;

    .prologue
    .line 63
    invoke-direct {p0}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 67
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$OnItemClickListener;

    .local v0, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 77
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 79
    .end local v0    # "listener":Landroid/widget/AdapterView$OnItemClickListener;
    :cond_0
    return-void
.end method

.method public removeOnClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 71
    iget-object v0, p0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
