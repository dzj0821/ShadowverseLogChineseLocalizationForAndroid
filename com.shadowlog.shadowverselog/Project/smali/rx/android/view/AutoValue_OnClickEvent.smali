.class final Lrx/android/view/AutoValue_OnClickEvent;
.super Lrx/android/view/OnClickEvent;
.source "AutoValue_OnClickEvent.java"


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 10
    invoke-direct {p0}, Lrx/android/view/OnClickEvent;-><init>()V

    .line 11
    if-nez p1, :cond_0

    .line 12
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null view"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :cond_0
    iput-object p1, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 31
    if-ne p1, p0, :cond_0

    .line 32
    const/4 v1, 0x1

    .line 38
    :goto_0
    return v1

    .line 34
    :cond_0
    instance-of v1, p1, Lrx/android/view/OnClickEvent;

    if-eqz v1, :cond_1

    move-object v0, p1

    .line 35
    check-cast v0, Lrx/android/view/OnClickEvent;

    .line 36
    .local v0, "that":Lrx/android/view/OnClickEvent;
    iget-object v1, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    invoke-virtual {v0}, Lrx/android/view/OnClickEvent;->view()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 38
    .end local v0    # "that":Lrx/android/view/OnClickEvent;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 43
    const/4 v0, 0x1

    .line 44
    .local v0, "h":I
    const v1, 0xf4243

    mul-int/2addr v0, v1

    .line 45
    iget-object v1, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 46
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClickEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public view()Landroid/view/View;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lrx/android/view/AutoValue_OnClickEvent;->view:Landroid/view/View;

    return-object v0
.end method
