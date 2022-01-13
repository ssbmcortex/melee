#include "ftseak.h"

void func_80110094(HSD_GObj* gobj) {
    Fighter* ft = (Fighter*)gobj->user_data;
    ft->x222C = 0;
    ft->x2230 = 0;
    ft->x2234 = 0;
    func_80074A4C(gobj, 0, 0);
    func_80074A4C(gobj, 1, -1);
}