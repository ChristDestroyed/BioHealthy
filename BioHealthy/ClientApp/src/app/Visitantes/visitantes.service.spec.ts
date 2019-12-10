import { TestBed, inject } from '@angular/core/testing';

import { VisitantesService } from './visitantes.service';

describe('VisitantesService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [VisitantesService]
    });
  });

  it('should be created', inject([VisitantesService], (service: VisitantesService) => {
    expect(service).toBeTruthy();
  }));
});
